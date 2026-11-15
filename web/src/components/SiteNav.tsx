"use client";

import Link from "next/link";
import { usePathname } from "next/navigation";

const LINKS = [
  { href: "/", label: "ホーム" },
  { href: "/formulas", label: "処方" },
  { href: "/oils", label: "精油" },
];

// どの画面からも、ホーム・処方・精油に行けるようにする上部のメニュー(ログイン画面には出さない)
export function SiteNav() {
  const pathname = usePathname();
  if (pathname.startsWith("/login")) return null;

  return (
    <nav className="border-b border-gray-200 dark:border-gray-700">
      <ul className="mx-auto flex w-full max-w-xl gap-1 px-4 py-2 text-sm">
        {LINKS.map((l) => {
          const current = l.href === "/" ? pathname === "/" : pathname.startsWith(l.href);
          return (
            <li key={l.href}>
              <Link
                href={l.href}
                aria-current={current ? "page" : undefined}
                className={`block rounded px-3 py-1.5 ${
                  current ? "bg-gray-900 text-white dark:bg-gray-100 dark:text-gray-900" : "hover:bg-gray-100 dark:hover:bg-gray-800"
                }`}
              >
                {l.label}
              </Link>
            </li>
          );
        })}
      </ul>
    </nav>
  );
}
