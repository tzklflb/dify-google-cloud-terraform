# ベースイメージとしてDocker Hubからイメージをプル
FROM langgenius/dify-api:latest

# カスタムのentrypoint.shを追加
COPY entrypoint.sh /custom-entrypoint.sh

# 新しいエントリーポイントを設定
ENTRYPOINT ["/bin/bash", "/custom-entrypoint.sh"]
