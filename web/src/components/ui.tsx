// 画面で何度も使う小さな部品

export const inputClass =
  "w-full rounded border border-gray-300 px-3 py-2 text-base dark:border-gray-600 dark:bg-gray-900";
export const buttonClass =
  "rounded bg-gray-900 px-4 py-2 text-sm text-white hover:bg-gray-700 dark:bg-gray-100 dark:text-gray-900";
export const subButtonClass =
  "rounded border border-gray-400 px-3 py-1.5 text-sm hover:bg-gray-100 dark:hover:bg-gray-800";

export function Field({
  label,
  hint,
  children,
}: {
  label: string;
  hint?: string;
  children: React.ReactNode;
}) {
  return (
    <label className="flex flex-col gap-1">
      <span className="text-sm font-medium">{label}</span>
      {children}
      {hint && <span className="text-xs text-gray-500">{hint}</span>}
    </label>
  );
}

export function Badge({ tone, children }: { tone: "ok" | "warn" | "muted" | "info" | "danger"; children: React.ReactNode }) {
  const tones = {
    ok: "bg-green-100 text-green-800 dark:bg-green-900 dark:text-green-100",
    warn: "bg-amber-100 text-amber-900 dark:bg-amber-900 dark:text-amber-100",
    muted: "bg-gray-100 text-gray-700 dark:bg-gray-800 dark:text-gray-200",
    info: "bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-100",
    danger: "bg-red-100 text-red-800 dark:bg-red-900 dark:text-red-100",
  };
  return <span className={`inline-block rounded px-2 py-0.5 text-xs ${tones[tone]}`}>{children}</span>;
}

export function Notice({
  searchParams,
  alreadyText = "この入力は、すでに登録済みです(二重に登録しないよう、2回目は保存していません)。変更があれば、下の「基本情報を直す」から直してください。",
}: {
  searchParams: { error?: string | string[]; saved?: string | string[]; already?: string | string[] };
  alreadyText?: string;
}) {
  const error = Array.isArray(searchParams.error) ? searchParams.error[0] : searchParams.error;
  if (error) {
    return <p className="rounded bg-red-50 px-3 py-2 text-sm text-red-700 dark:bg-red-950 dark:text-red-200">{error}</p>;
  }
  if (searchParams.already) {
    return (
      <p className="rounded bg-amber-50 px-3 py-2 text-sm text-amber-900 dark:bg-amber-950 dark:text-amber-100">
        {alreadyText}
      </p>
    );
  }
  if (searchParams.saved) {
    return <p className="rounded bg-green-50 px-3 py-2 text-sm text-green-800 dark:bg-green-950 dark:text-green-200">保存しました</p>;
  }
  return null;
}
