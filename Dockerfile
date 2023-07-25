# ベースイメージを指定 wordpress:6.2.2 推奨alpineはやめとけ
FROM wordpress:6.2.2-fpm-alpine

ENV APP_ROOT /wordpress

WORKDIR $APP_ROOT
# プラグインやテーマなどをインストールする場合はここに追加するコマンドを記述
# 例: RUN apk update && apk add --no-cache \ ## alpine使わんならapt
# パッケージ名 \

# WordPressのカスタム設定ファイルを追加（任意）
COPY . .
EXPOSE 8000