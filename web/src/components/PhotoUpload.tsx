"use client";

import { useState, useTransition } from "react";
import { buttonClass, inputClass } from "./ui";

// 写真は、送る前にブラウザの中で JPEG(長い辺 2000px まで)に変える
// - iPhone の HEIC も、ここで JPEG にする(07 R1)
// - 小さくすると、送る時間・Claude API の費用が減る。手書きの文字はこの大きさで十分読める(V1 は 480×640 でも読めた)
const MAX_EDGE = 2000;
const QUALITY = 0.85;

async function decode(file: File): Promise<ImageBitmap> {
  try {
    return await createImageBitmap(file, { imageOrientation: "from-image" });
  } catch {
    // HEIC は、Safari 以外のブラウザでは読めないので、変換の道具を使う(必要なときだけ読み込む)
    const isHeic = /\.(heic|heif)$/i.test(file.name) || /heic|heif/i.test(file.type);
    if (!isHeic) throw new Error("この写真は読み込めませんでした");
    const heic2any = (await import("heic2any")).default;
    const converted = await heic2any({ blob: file, toType: "image/jpeg", quality: QUALITY });
    const blob = Array.isArray(converted) ? converted[0] : converted;
    return await createImageBitmap(blob);
  }
}

async function toJpeg(file: File): Promise<Blob> {
  const bitmap = await decode(file);
  const scale = Math.min(1, MAX_EDGE / Math.max(bitmap.width, bitmap.height));
  const w = Math.round(bitmap.width * scale);
  const h = Math.round(bitmap.height * scale);
  const canvas = document.createElement("canvas");
  canvas.width = w;
  canvas.height = h;
  const ctx = canvas.getContext("2d");
  if (!ctx) throw new Error("写真を変換できませんでした");
  ctx.drawImage(bitmap, 0, 0, w, h);
  bitmap.close();
  return await new Promise<Blob>((resolve, reject) =>
    canvas.toBlob((b) => (b ? resolve(b) : reject(new Error("写真を変換できませんでした"))), "image/jpeg", QUALITY),
  );
}

export function PhotoUpload({ action }: { action: (formData: FormData) => Promise<void> }) {
  const [file, setFile] = useState<File | null>(null);
  const [message, setMessage] = useState<string | null>(null);
  const [step, setStep] = useState<"idle" | "converting" | "reading">("idle");
  const [pending, startTransition] = useTransition();
  const busy = pending || step !== "idle";

  const submit = async () => {
    if (!file) return;
    setMessage(null);
    setStep("converting");
    let jpeg: Blob;
    try {
      jpeg = await toJpeg(file);
    } catch (e) {
      setStep("idle");
      setMessage(e instanceof Error ? e.message : "写真を変換できませんでした");
      return;
    }
    const fd = new FormData();
    fd.set("photo", new File([jpeg], "note.jpg", { type: "image/jpeg" }));
    fd.set("photo_name", file.name);
    setStep("reading");
    startTransition(async () => {
      await action(fd); // 終わると、確認の画面に移る
      setStep("idle");
    });
  };

  return (
    <div className="flex flex-col gap-3">
      <input
        type="file"
        accept="image/*,.heic,.heif"
        disabled={busy}
        onChange={(e) => {
          setFile(e.target.files?.[0] ?? null);
          setMessage(null);
        }}
        className={inputClass}
        aria-label="ノートの写真"
      />
      <div>
        <button type="button" className={`${buttonClass} disabled:opacity-60`} disabled={!file || busy} onClick={submit}>
          {step === "converting" ? "写真を整えています…" : step === "reading" ? "AI が読み取っています…(数十秒)" : "読み取る"}
        </button>
      </div>
      {message && <p className="text-sm text-red-600">{message}</p>}
    </div>
  );
}
