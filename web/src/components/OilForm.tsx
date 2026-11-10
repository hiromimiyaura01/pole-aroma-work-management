import { KIND_LABELS, type Oil } from "@/lib/oils";
import { Field, inputClass, buttonClass } from "./ui";

// 精油の基本情報の入力欄(新規登録と編集で共通)
export function OilForm({
  oil,
  action,
  submitLabel,
}: {
  oil?: Oil;
  action: (formData: FormData) => Promise<void>;
  submitLabel: string;
}) {
  return (
    <form action={action} className="flex flex-col gap-4">
      {oil && <input type="hidden" name="id" value={oil.id} />}
      <Field label="名前(必須)" hint="一覧で見る代表の名前。ノートでの書き方(別名)は、写真の読み取りを作るときの表記揺れ辞書で持ちます">
        <input name="name" required defaultValue={oil?.name} className={inputClass} />
      </Field>
      <Field label="学名" hint="例:Lavandula angustifolia">
        <input name="botanical_name" defaultValue={oil?.botanical_name ?? ""} className={inputClass} />
      </Field>
      <Field label="種類" hint="精油とアブソリュートでは成分の量が大きく違うことがあります(例:ラベンダー)">
        <select name="kind" defaultValue={oil?.kind ?? "essential_oil"} className={inputClass}>
          {Object.entries(KIND_LABELS).map(([value, label]) => (
            <option key={value} value={value}>
              {label}
            </option>
          ))}
        </select>
      </Field>
      <div className="grid grid-cols-2 gap-3">
        <Field label="抽出部位" hint="例:花、果皮、葉">
          <input name="plant_part" defaultValue={oil?.plant_part ?? ""} className={inputClass} />
        </Field>
        <Field label="抽出方法" hint="例:水蒸気蒸留、圧搾">
          <input name="extraction_method" defaultValue={oil?.extraction_method ?? ""} className={inputClass} />
        </Field>
      </div>
      <Field label="ブランド(任意)">
        <input name="brand" defaultValue={oil?.brand ?? ""} className={inputClass} />
      </Field>
      <Field label="メモ(任意)">
        <textarea name="memo" rows={2} defaultValue={oil?.memo ?? ""} className={inputClass} />
      </Field>
      <div>
        <button type="submit" className={buttonClass}>
          {submitLabel}
        </button>
      </div>
    </form>
  );
}
