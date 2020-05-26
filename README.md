# Railsのインストール、サーバの立ち上げ

* Dockerfileの内容でビルドし、Dockerイメージを作ります。

```
docker-compose build
```

rails new でRailsアプリケーションを作成します。 参考: https:/
/railstutorial.jp/chapters/beginning?version=5.1#sec-the_hello_application

```
docker-compose run --rm app rails _5.1.6_ new .
```

以下のコマンドを実行し、rails serverを立ち上げます。

```
docker-compose up
```

http://localhost:3000/ にアクセスし、「Yay! You’re on Rails!」が表示されれば完了です。

# 操作方法


サーバを立ち上げる

```
docker-compose up
```

サーバを落とす

```
docker-compose down
```

コマンドを実行する

`docker-compose run --rm app [dockerコンテナ内で、実行したいコマンド]`

例:

```
docker-compose run --rm app rails generate controller Users new
```

※サーバがすでに立ち上がっている場合は、docker-compose exec でもOKです。

