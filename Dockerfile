# ベースイメージを指定
FROM wordpress:6.2.2-fpm-alpine

ENV APP_ROOT /wordpress

WORKDIR $APP_ROOT
# プラグインやテーマなどをインストールする場合はここに追加するコマンドを記述
# 例: RUN apt-get update && apt-get install -y パッケージ名

# WordPressのカスタム設定ファイルを追加（任意）
COPY . .
EXPOSE 8000