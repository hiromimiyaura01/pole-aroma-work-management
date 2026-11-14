"use client";

import { useFormStatus } from "react-dom";

// 押したら、処理が終わるまで押せなくなるボタン(連打で二重に送らないため)
export function SubmitButton({
  children,
  pendingText = "保存中…",
  className,
  name,
  value,
}: {
  children: React.ReactNode;
  pendingText?: string;
  className?: string;
  name?: string;
  value?: string;
}) {
  const { pending } = useFormStatus();
  return (
    <button
      type="submit"
      name={name}
      value={value}
      disabled={pending}
      aria-busy={pending}
      className={`${className ?? ""} inline-flex items-center gap-2 disabled:cursor-wait disabled:opacity-60`}
    >
      {pending && (
        <span
          aria-hidden
          className="h-4 w-4 animate-spin rounded-full border-2 border-current border-t-transparent"
        />
      )}
      {pending ? pendingText : children}
    </button>
  );
}
