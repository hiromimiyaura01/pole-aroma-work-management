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
