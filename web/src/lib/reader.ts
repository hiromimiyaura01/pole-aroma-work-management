// 手書きノートの写真を Claude API で読み取る(サーバー側だけで動く。キーはブラウザに出さない)
// キーは Netlify の環境変数 ANTHROPIC_API_KEY に置く(リポジトリ・チャットには書かない)

import Anthropic from "@anthropic-ai/sdk";
import { DRAFT_SCHEMA, type Draft } from "./readings";

// 指示文の版。指示文(SYSTEM_PROMPT)を変えたら上げる(Evals で、どの版の結果かを見分けるため)
export const PROMPT_VERSION = "2026-11-21.1";

// モデルは Evals(R16)で比べて決める(10 の T5)。それまでは環境変数で切り替えられるようにしておく
export function readerModel(): string {
  return (process.env.CLAUDE_MODEL ?? "").trim() || "claude-opus-5-5";
}

function readerEffort(): "low" | "medium" | "high" {
  const v = (process.env.CLAUDE_EFFORT ?? "").trim();
  return v === "low" || v === "high" ? v : "medium";
}

const SYSTEM_PROMPT = `あなたは、アロマ・フレグランスの作り手の「手書きの処方ノート」の写真を読み取り、決まった形の下書きにする係です。
下書きは、作り手本人が必ず確認・修正してから保存します。あなたの役目は「書かれているとおりに写すこと」で、正しい処方を考えることではありません。

## ノートの書き方(この作り手の特徴)
- 1つの処方は、名前と番号(例:「Tea 012」)で始まることが多い。見開きで2つの処方が並ぶことがある。そのときは処方ごとに分けて返す。
- 不変 ID として「P」と5桁の数字(例:P00042)が書かれていることがある。あれば formula_id に入れる。なければ null。
- 1行に「精油の名前」と「数字」が書かれる。数字に単位はない(比率)。
- 精油の名前は略称・英語・カタカナが混ざる(例:「O.S」「Eremi」「Cederwood. V」「ホーウッド」)。書かれたとおりに写す。正式名に直さない。
- 精油の名前の **左側** を、縦に長いかっこ({ や ( )でまとめて、グループに分けることが多い。かっこの外側(さらに左)に、そのグループの名前を英語で書く(例:top、middle、base)。
  - グループは上から 1, 2, 3… と番号をつけて group_no に入れる。かっこの横に書かれたグループの名前は、そのグループのすべての行の group_label に、書かれたとおりに入れる(top を middle にするなど、言いかえない)。名前が書かれていなければ null。
  - かっこの記号そのものは、精油の名前ではない。name に {、(、| などを含めない。
  - グループの横(右側など)に小計を書くことがある。
  - かっこの外の行は group_no を null にし、outside_group を true にする。
- 線で消して書き直した数字がある。最終の値が読み取れるならその値を入れ、rewritten を true にする。どちらが最終か分からないときは amount を null にし、unclear を true にする。

## 守ること
1. 書かれていない数字を作らない。小計や合計と合わなくても、行の数字を書き換えない(合わないことは、作り手が計算で確かめる)。
2. 読めない・自信がないところは、推測で埋めない。amount を null にするか、unclear を true にして、note に理由を短く書く(例:「1 か 7 か判別しにくい」)。
3. 小計・合計は、ノートに書かれている場合だけ subtotals / total に入れる。自分で計算して入れない。
4. 処方以外のメモ(感想、日付、香りの印象など)は lines に入れない。処方に関係しそうなら notes に短く書く。
5. 処方が見つからない写真なら、formulas を空にし、page_notes に理由を書く。
6. note・notes・page_notes は日本語で、短く書く。`;

export type ReadResult =
  | { ok: true; draft: Draft; model: string; inputTokens: number; outputTokens: number; durationMs: number }
  | { ok: false; error: string; model: string; durationMs: number };

export async function readNotePhoto(image: { base64: string; mediaType: "image/jpeg" | "image/png" | "image/webp" }): Promise<ReadResult> {
  const model = readerModel();
  const started = Date.now();
  const elapsed = () => Date.now() - started;

  if (!(process.env.ANTHROPIC_API_KEY ?? "").trim()) {
    return { ok: false, model, durationMs: 0, error: "ANTHROPIC_API_KEY が設定されていません(Netlify の Environment variables)" };
  }

  // 待ち時間の上限:長く待っても、サーバー側(Netlify)で打ち切られるため、短めにする
  const client = new Anthropic({ timeout: 120_000, maxRetries: 1 });

  try {
    const response = await client.beta.messages.create({
      model,
      max_tokens: 16000,
      // 安全のための判定で断られたとき、同じ依頼を別のモデルで続けてもらう(既定の振り分け)
      betas: ["server-side-fallback-2026-07-01"],
      fallbacks: "default",
      output_config: {
        effort: readerEffort(),
        format: { type: "json_schema", schema: DRAFT_SCHEMA },
      },
      system: SYSTEM_PROMPT,
      messages: [
        {
          role: "user",
          content: [
            { type: "image", source: { type: "base64", media_type: image.mediaType, data: image.base64 } },
            { type: "text", text: "この写真の処方ノートを読み取って、決まった形で返してください。" },
          ],
        },
      ],
    });

    if (response.stop_reason === "refusal") {
      return { ok: false, model, durationMs: elapsed(), error: "AI が読み取りを断りました。写真を変えて試してください" };
    }
    if (response.stop_reason === "max_tokens") {
      return { ok: false, model, durationMs: elapsed(), error: "読み取り結果が長すぎて途中で切れました" };
    }

    const text = response.content
      .map((b) => (b.type === "text" ? b.text : ""))
      .join("")
      .trim();
    let draft: Draft;
    try {
      draft = JSON.parse(text) as Draft;
    } catch {
      return { ok: false, model, durationMs: elapsed(), error: "読み取り結果の形が正しくありませんでした" };
    }
    if (!Array.isArray(draft.formulas)) {
      return { ok: false, model, durationMs: elapsed(), error: "読み取り結果の形が正しくありませんでした" };
    }

    return {
      ok: true,
      draft,
      model: response.model,
      inputTokens: response.usage.input_tokens,
      outputTokens: response.usage.output_tokens,
      durationMs: elapsed(),
    };
  } catch (error) {
    // キーの値やエラーの細部は画面に出さない
    let message = "Claude API に接続できませんでした";
    if (error instanceof Anthropic.AuthenticationError) message = "Claude API のキーが正しくありません";
    else if (error instanceof Anthropic.RateLimitError) message = "Claude API の利用の上限に達しました。少し待ってから試してください";
    else if (error instanceof Anthropic.BadRequestError) message = `Claude API が依頼を受け付けませんでした(${error.message.slice(0, 200)})`;
    else if (error instanceof Anthropic.APIConnectionTimeoutError) message = "Claude API の応答が時間内に返りませんでした";
    else if (error instanceof Anthropic.APIError) message = `Claude API のエラー(${error.status ?? "不明"})`;
    return { ok: false, model, durationMs: elapsed(), error: message };
  }
}
