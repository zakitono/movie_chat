# Movie Chat

下記ページで公開中です。

https://www.movies-chat.com/

## アプリ概要
映画を観終わった後に感想を投稿して、他の人と感想を語り合う事ができるアプリです。
Ruby on Railsで制作しました。

作成した背景や想いなど、より詳細な情報は下記をご覧ください。  
[ポートフォリオ解説]https://qiita.com/zakitono/private/b5612353c75796cf67cd

## 機能
- <機能①>：ゲストログイン機能
- <機能②>：投稿機能
- <機能③>：投稿削除機能
- <機能④>：いいねボタン機能(Ajax)
- <機能⑤>：プロフィール表示機能
- <機能⑥>：プロフィール編集機能
- <機能⑦>：検索機能
- <機能⑧>：チャット機能

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
3. 内容を入力して、「Enter」キーを押してコメントを送信


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
![ER図(movie_chat)](https://user-images.githubusercontent.com/71639603/118356027-43b7fb80-b5ae-11eb-9f42-3119a9bff5df.png)

## その他
現在も開発を継続しており、順次実装予定です。  
実装予定の機能はIssuesよりご確認いただけます。  
https://github.com/zakitono/movie_chat/issues
