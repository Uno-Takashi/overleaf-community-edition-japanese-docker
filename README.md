# Overleaf Community Edition with Japanese Support 🇯🇵

日本語対応のOverleaf Community Editionを構築するためのDocker Composeプロジェクトです。

## 特徴 ✨

- 📝 TeX Live full schemeによる完全な日本語LaTeX環境
- 🔄 自動的なMongoDBレプリカセット初期化
- ⚙️ 最適化されたDocker Compose設定
- 🎌 日本語フォントとパッケージの完全サポート
- 🛠️ VS Code Dev Container対応

## 必要な環境 🔧

- 🐳 Docker
- 🐙 Docker Compose

## 使用方法 🚀

1. 📥 プロジェクトをクローンまたはダウンロード
   ```bash
   git clone https://github.com/username/overleaf-community-playground.git
   cd overleaf-community-playground
   ```

2. 📁 プロジェクトディレクトリに移動

3. 🚀 以下のコマンドで起動:
   ```bash
   docker compose up -d
   ```

4. 🌐 ブラウザで http://localhost:8500 にアクセス

## ディレクトリ構造

```
.
├── .devcontainer/       # VS Code Dev Container設定
├── .gitignore          # Git除外設定（データディレクトリを除外）
├── compose.yml          # Docker Compose設定ファイル
├── Dockerfile           # 日本語対応Overleafイメージ
├── mongo-init.js        # MongoDBレプリカセット初期化スクリプト
├── overleaf_data/       # Overleafデータディレクトリ（.gitkeepのみ追跡）
├── mongo_data/          # MongoDBデータディレクトリ（.gitkeepのみ追跡）
├── redis_data/          # Redisデータディレクトリ（.gitkeepのみ追跡）
└── README.md           # このファイル
```

### Git管理について

- データディレクトリ（`overleaf_data/`, `mongo_data/`, `redis_data/`）の内容は`.gitignore`で除外されています
- 各データディレクトリには`.gitkeep`ファイルが配置され、空のディレクトリもGitで追跡されます
- これにより、リポジトリをクローンした際に必要なディレクトリ構造が自動的に作成されます

## カスタマイズ

### ポート変更
`compose.yml`の`ports`セクションを変更してください:
```yaml
ports:
  - "8080:80"  # 8080ポートに変更する場合
```

### 環境変数
`compose.yml`の`environment`セクションで各種設定を変更できます。

## トラブルシューティング 🔧

### コンテナが起動しない場合
1. 🛑 既存のコンテナを停止: `docker-compose down`
2. 🧹 データディレクトリをクリア: `rm -rf overleaf_data/* mongo_data/* redis_data/*`
3. 🔄 再起動: `docker-compose up -d`

### 日本語フォントが表示されない場合
Dockerファイルの TeX Live フルインストールを確認してください。


## ライセンス 📄

このプロジェクトはOverleafの公式イメージをベースにしており、各コンポーネントのライセンスに従います。
