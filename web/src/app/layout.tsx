import type { Metadata } from "next";
import { Suspense } from "react";
import "./globals.css";
import { SiteNav } from "@/components/SiteNav";

export const metadata: Metadata = {
  title: "POLE AROMA 処方ノート",
  description: "処方の記録と、IFRA の上限の確認を補助する道具",
};

export default function RootLayout({ children }: LayoutProps<"/">) {
  return (
    <html lang="ja" className="h-full antialiased">
      <body className="min-h-full flex flex-col">
        {/* 今いる画面を調べる部品なので、Suspense で包む(画面の先読みを止めないため) */}
        <Suspense fallback={null}>
          <SiteNav />
        </Suspense>
        {children}
      </body>
    </html>
  );
}
