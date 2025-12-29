# ビルド引数としてDIFY_API_VERSIONを受け取る
ARG DIFY_API_VERSION=latest

# ベースイメージとしてDocker Hubからイメージをプル
FROM langgenius/dify-api:${DIFY_API_VERSION}

# カスタムのentrypoint.shを追加
COPY entrypoint.sh /custom-entrypoint.sh

# 新しいエントリーポイントを設定
ENTRYPOINT ["/bin/bash", "/custom-entrypoint.sh"]
