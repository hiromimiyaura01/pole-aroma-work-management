# web/ — アプリ本体(Next.js)

- 企画ドキュメントは `../docs/`、作業ルールは `../CLAUDE.md`。
- 公開先は Netlify(設定はリポジトリ直下の `netlify.toml`)。

## 手元で動かす

```bash
npm install
npm run dev
```

ブラウザで http://localhost:3000 を開く。

## キー(秘密の情報)

- Supabase・Claude API のキーは **リポジトリに入れない**。
- 手元では `web/.env.local`(Git に入らない)、公開版では Netlify の設定画面の「Environment variables」に入れる。

使うキーの名前:

| 名前 | 中身 | 取り出す場所 |
|---|---|---|
| `SUPABASE_URL` | Supabase のプロジェクトの URL | Supabase の Project Settings → Data API |
| `SUPABASE_PUBLISHABLE_KEY` | Supabase の publishable key(`sb_publishable_...`) | Supabase の Project Settings → API Keys |

## ログイン

- Supabase の「メール+パスワード」を使う。利用者はひろみ1人で、新規登録はできない設定にする。
- ログインしていないと、どの画面を開いてもログイン画面に移る(`src/proxy.ts`)。
