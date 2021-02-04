# Movie Chat

下記ページで公開中です。

https://movies-chat.herokuapp.com/

## アプリ概要
映画を観終わった後に感想を投稿して、他の人と感想を語り合う事ができるアプリです。
Ruby on Railsで制作しました。

作成した背景や想いなど、より詳細な情報は下記をご覧ください。  
[ポートフォリオ解説]https://qiita.com/zakitono/private

## 機能
- <機能①>：ゲストログイン機能
- <機能②>：投稿機能
- <機能③>：投稿削除機能
- <機能④>：プロフィール表示機能
- <機能⑤>：プロフィール編集機能
- <機能⑥>：検索機能
- <機能⑦>：チャット機能

## 使い方
### <感想の投稿>
1. ゲストログインボタンでログイン
2. 新規投稿ボタンをクリックして、映画のタイトル、感想を入力

### <検索機能>
1. トップページの検索窓から映画のタイトルを入力
2. 検索ボタンをクリック

### <チャット機能>
1. トップページの投稿一覧より、ユーザーの名前をクリック
2. ユーザーのプロフィール画面から「チャット開始する」または「チャットルームへGO」をクリック


## ローカル環境へのインストール方法
※Railsの場合
```
$ git clone https://github.com/zakitono/movie_chat
$ cd movie_chat
$ bundle install
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

## ER図
![ER図（movieChat）](https://user-images.githubusercontent.com/71639603/106863153-73cc4480-670b-11eb-82c3-048df46802ac.png)

## その他
現在も開発を継続しており、順次実装予定です。  
実装予定の機能はIssuesよりご確認いただけます。  
https://github.com/zakitono/movie_chat/issues