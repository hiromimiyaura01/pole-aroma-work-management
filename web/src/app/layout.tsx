import type { Metadata } from "next";
import "./globals.css";

export const metadata: Metadata = {
  title: "POLE AROMA 処方ノート",
  description: "処方の記録と、IFRA の上限の確認を補助する道具",
};

export default function RootLayout({ children }: LayoutProps<"/">) {
  return (
    <html lang="ja" className="h-full antialiased">
      <body className="min-h-full flex flex-col">{children}</body>
    </html>
  );
}
