"use client";

import { useState } from "react";
import { GROUP_LABELS, type LineInput } from "@/lib/formulas";
import { Field, inputClass, buttonClass, subButtonClass } from "./ui";
import { SubmitButton } from "./SubmitButton";

type OilOption = { id: string; name: string };

const emptyLine = (key: number): LineInput & { key: number } => ({
  key,
  oil_id: "",
  amount: "",
  dilution_pct: "10",
  note_group: "",
});

// 処方の入力欄(新規登録と編集で共通)。配合行は、行を足しながら入れる
export function FormulaForm({
  oils,
  action,
  submitLabel,
  formulaId,
  submissionToken,
  defaults,
}: {
  oils: OilOption[];
  action: (formData: FormData) => Promise<void>;
  submitLabel: string;
  formulaId?: string;
  submissionToken?: string; // 新規登録のときの「この1回の登録の番号」(二重登録を防ぐ)
  defaults: { fragrance_pct: string; completed_on: string; memo: string; lines: LineInput[] };
}) {
  // key は、行を見分けるための通し番号(行を消しても、ほかの行の入力がずれないようにする)
  const [lines, setLines] = useState(() =>
    defaults.lines.length > 0
      ? defaults.lines.map((l, i) => ({ ...l, key: i }))
      : [emptyLine(0), emptyLine(1), emptyLine(2)],
  );
  const addLine = () => setLines((prev) => [...prev, emptyLine(Math.max(-1, ...prev.map((l) => l.key)) + 1)]);
  const [showDilution, setShowDilution] = useState(() => defaults.lines.some((l) => Number(l.dilution_pct) !== 10));

  const update = (key: number, field: keyof LineInput, value: string) =>
    setLines((prev) => prev.map((l) => (l.key === key ? { ...l, [field]: value } : l)));

  // ノートの小計と見比べるための合計
  const sum = (rows: typeof lines) => rows.reduce((t, l) => t + (Number(l.amount) || 0), 0);
  const total = sum(lines);
  const groupTotals = Object.keys(GROUP_LABELS)
    .map((g) => ({ g, t: sum(lines.filter((l) => l.note_group === g)) }))
    .filter((x) => x.t > 0);

  return (
    <form action={action} className="flex flex-col gap-4">
      {formulaId && <input type="hidden" name="id" value={formulaId} />}
      {submissionToken && <input type="hidden" name="submission_token" value={submissionToken} />}

      <Field label="賦香率(%)(必須)" hint="完成品の重さに対する、精油(原液)の合計の重さ。例:10">
        <input
          name="fragrance_pct"
          type="number"
          inputMode="decimal"
          step="any"
          min="0.01"
          max="100"
          required
          defaultValue={defaults.fragrance_pct}
          className={inputClass}
        />
      </Field>
      <Field label="完成版が決まった日">
        <input name="completed_on" type="date" required defaultValue={defaults.completed_on} className={inputClass} />
      </Field>

      <fieldset className="flex flex-col gap-3">
        <legend className="text-sm font-medium">配合(ノートの数字をそのまま入れる)</legend>
        {lines.map((l, i) => (
          <div key={l.key} className="flex flex-col gap-2 rounded bg-gray-50 p-3 dark:bg-gray-900">
            <div className="flex items-center justify-between text-xs text-gray-500">
              <span>{i + 1}行目</span>
              {lines.length > 1 && (
                <button
                  type="button"
                  className="underline"
                  onClick={() => setLines((prev) => prev.filter((x) => x.key !== l.key))}
                >
                  この行を消す
                </button>
              )}
            </div>
            <select
              name="oil_id"
              required
              value={l.oil_id}
              onChange={(e) => update(l.key, "oil_id", e.target.value)}
              className={inputClass}
              aria-label={`${i + 1}行目の精油`}
            >
              <option value="">(精油を選ぶ)</option>
              {oils.map((o) => (
                <option key={o.id} value={o.id}>
                  {o.name}
                </option>
              ))}
            </select>
            <div className="flex gap-2">
              <input
                name="amount"
                type="number"
                inputMode="decimal"
                step="any"
                min="0.0001"
                required
                placeholder="数字"
                value={l.amount}
                onChange={(e) => update(l.key, "amount", e.target.value)}
                className={inputClass}
                aria-label={`${i + 1}行目の数字`}
              />
              <select
                name="note_group"
                value={l.note_group}
                onChange={(e) => update(l.key, "note_group", e.target.value)}
                className={inputClass}
                aria-label={`${i + 1}行目のグループ`}
              >
                <option value="">(グループなし)</option>
                {Object.entries(GROUP_LABELS).map(([value, label]) => (
                  <option key={value} value={value}>
                    {label}
                  </option>
                ))}
              </select>
            </div>
            {showDilution ? (
              <label className="flex items-center gap-2 text-xs">
                試作時の希釈率(%)
                <input
                  name="dilution_pct"
                  type="number"
                  inputMode="decimal"
                  step="any"
                  min="0.01"
                  max="100"
                  required
                  value={l.dilution_pct}
                  onChange={(e) => update(l.key, "dilution_pct", e.target.value)}
                  className={`${inputClass} max-w-28`}
                />
              </label>
            ) : (
              <input type="hidden" name="dilution_pct" value={l.dilution_pct} />
            )}
          </div>
        ))}
        <div className="flex flex-wrap items-center gap-3">
          <button type="button" className={subButtonClass} onClick={addLine}>
            + 行を足す
          </button>
          {!showDilution && (
            <button type="button" className="text-xs underline" onClick={() => setShowDilution(true)}>
              10% 以外で希釈した精油がある
            </button>
          )}
        </div>
        <p className="text-sm">
          合計:{Number(total.toFixed(4))}
          {groupTotals.length > 0 && (
            <span className="text-gray-600 dark:text-gray-300">
              ({groupTotals.map((x) => `${GROUP_LABELS[x.g]} ${Number(x.t.toFixed(4))}`).join("/")})
            </span>
          )}
          <span className="block text-xs text-gray-500">ノートの小計・合計と見比べてください。</span>
        </p>
        {oils.length === 0 && (
          <p className="text-sm text-red-600">精油がまだ登録されていません。先に「精油」の画面で登録してください。</p>
        )}
      </fieldset>

      <Field label="メモ(任意)">
        <textarea name="memo" rows={2} defaultValue={defaults.memo} className={inputClass} />
      </Field>
      <div>
        <SubmitButton className={buttonClass}>{submitLabel}</SubmitButton>
      </div>
    </form>
  );
}
