### デプロイ用コンテナの構築
FROM mfunaki/cci-img-node

# ワーキングディレクトリの設定
WORKDIR /node-app

# コンテナへのファイルコピー(destはWORKDIRからの相対パス)
# testは含めない、node_modulesを含めない等はここで指示
COPY ./node-app .

# 外部への公開ポート
EXPOSE 8080
# 起動
CMD [ "node", "app.js" ]