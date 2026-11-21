"use client";

import { useState } from "react";
import { useRouter } from "next/navigation";
import { buttonClass } from "./ui";

type ModelOption = { id: string; label: string; estYen: number };
type StartResult =
  | { ok: true; batchId: string; runs: { id: string; model: string }[]; caseIds: string[] }
  | { ok: false; error: string };
type CaseResult = { ok: true; skipped: boolean } | { ok: false; error: string };

// 採点を動かす部品:写真1枚ずつ、選んだモデルを並べて送る(Netlify の待ち時間の上限に当たらないように)
// 途中で画面を閉じると、そこで止まる(終わった分は残る)
export function EvalRunner({
  caseIds,
  models,
  start,
  runCase,
  finish,
}: {
  caseIds: string[];
  models: ModelOption[];
  start: (models: string[], readingIds: string[]) => Promise<StartResult>;
  runCase: (runId: string, readingId: string) => Promise<CaseResult>;
  finish: () => Promise<void>;
}) {
  const router = useRouter();
  const [picked, setPicked] = useState<string[]>(models.map((m) => m.id));
  const [running, setRunning] = useState(false);
  const [progress, setProgress] = useState<{ done: number; total: number; errors: string[] } | null>(null);

  const estimate = Math.ceil(caseIds.length * models.filter((m) => picked.includes(m.id)).reduce((t, m) => t + m.estYen, 0));
  const total = caseIds.length * picked.length;

  const run = async () => {
    if (!window.confirm(`写真 ${caseIds.length}枚 × モデル ${picked.length}つ を読み直して採点します。費用の目安は 約${estimate}円 です。始めますか?`)) return;
    setRunning(true);
    setProgress({ done: 0, total, errors: [] });
    const started = await start(picked, caseIds);
    if (!started.ok) {
      setProgress({ done: 0, total, errors: [started.error] });
      setRunning(false);
      return;
    }
    let done = 0;
    const errors: string[] = [];
    for (const readingId of started.caseIds) {
      // 同じ写真を、選んだモデルで同時に読む
      const results = await Promise.all(
        started.runs.map((r) =>
          runCase(r.id, readingId).catch((e: unknown) => ({ ok: false as const, error: e instanceof Error ? e.message : "通信できませんでした" })),
        ),
      );
      results.forEach((res) => {
        if (!res.ok) errors.push(res.error);
      });
      done += results.length;
      setProgress({ done, total: started.runs.length * started.caseIds.length, errors: [...errors] });
    }
    await finish();
    setRunning(false);
    router.refresh();
  };

  return (
    <div className="flex flex-col gap-3">
      <fieldset className="flex flex-col gap-1">
        <legend className="text-sm font-medium">比べるモデル</legend>
        {models.map((m) => (
          <label key={m.id} className="flex items-center gap-2 text-sm">
            <input
              type="checkbox"
              disabled={running}
              checked={picked.includes(m.id)}
              onChange={(e) => setPicked((prev) => (e.target.checked ? [...prev, m.id] : prev.filter((x) => x !== m.id)))}
            />
            {m.label}
            <span className="text-xs text-gray-500">(1枚 約{m.estYen < 1 ? "1円未満" : `${Math.round(m.estYen)}円`})</span>
          </label>
        ))}
      </fieldset>
      <p className="text-sm">
        写真 {caseIds.length}枚 × モデル {picked.length}つ = {total}回 読み直します。費用の目安:約{estimate}円
      </p>
      <div>
        <button type="button" className={`${buttonClass} disabled:opacity-60`} disabled={running || total === 0} onClick={run}>
          {running ? "採点しています…(画面を閉じないでください)" : "採点を始める"}
        </button>
      </div>
      {progress && (
        <p className="text-sm">
          {progress.done} / {progress.total} 終わりました
          {progress.errors.length > 0 && (
            <span className="block text-red-600">
              うまくいかなかったもの {progress.errors.length}件:{[...new Set(progress.errors)].join("/")}
            </span>
          )}
        </p>
      )}
    </div>
  );
}
