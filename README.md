# アプリケーション名
**gift-life**

# アプリケーション概要
オリジナルアプリケーションとして、ギフト記録、ギフトのお気に入り登録のできるアプリケーションを作成しました。また、トップページは、ギフトにお薦めの商品紹介ページとし、管理者のみ編集ができるようにしました。

# URL
https://gift-life.herokuapp.com/

- Herokuでデプロイしているため、Herokuの仕様により本番環境にアクセス頂いた際に画像リンクが切れている可能性がございます。


# ID/Pass

- ID: admin
- Pass: 3333

# テスト用アカウント

- メールアドレス: a@a
- パスワード: aaaaaa

# 開発環境	
ruby 2.6.5 / Ruby on Rails 6.0.0 / mysql2 0.4.4 / GitHub / Heroku / Visual Studio Code 


# 利用方法

- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
同時に複数の方がログインしている場合に、ログインできない可能性があります。
- ギフト記録方法
テストアカウントでログイン→トップページからギフトボタン押下→ギフト記録ページから登録ボタン押下→登録情報入力→ギフト記録一覧に登録情報追加
- ギフト記録詳細・編集・削除方法
ギフト記録ページから、商品情報をクリックすると、ギフト記録詳細ページへ移動、詳細ページ内の編集・削除ボタンから編集・削除可能になります。
- ギフトアイデア登録・詳細・編集・削除方法
テストアカウントでログイン→トップページからギフトアイデアボタン押下→ギフトアイデアページから登録、登録後、詳細ページから、編集・削除可能になります。
- 確認後、ログアウト処理をお願いします。

# 目指した課題解決	
贈り物だけを記録できるアプリケーションは存在したのですが、贈り物のお気に入りやアイデアも登録できれば、さらに良いと考え、作成を目指しました。贈り物を考える機会が増え、人に喜んでもらえることを、楽しいと感じる人が、増えることを期待しました。また、アプリケーションを見る楽しみが増えるように、贈り物の参考となる、お薦めの商品紹介ページを取り入れることを考えました。

# 洗い出した要件	
[![Image from Gyazo](https://i.gyazo.com/f97380eaeaebfcfaff1ea8a702fae045.png)](https://gyazo.com/f97380eaeaebfcfaff1ea8a702fae045)
[![Image from Gyazo](https://i.gyazo.com/2f8d048bff8ad97b1b7c7872462d1de5.png)](https://gyazo.com/2f8d048bff8ad97b1b7c7872462d1de5)
[![Image from Gyazo](https://i.gyazo.com/184fe83a4d553b210e7ab1c802510cf3.png)](https://gyazo.com/184fe83a4d553b210e7ab1c802510cf3)
[![Image from Gyazo](https://i.gyazo.com/2db471b2748e7ab62982c95c4c65b600.png)](https://gyazo.com/2db471b2748e7ab62982c95c4c65b600)

# 実装予定の機能
ギフト記録の相手・イベントごとにフォルダとなっているページの作成

# データベース設計	
[![Image from Gyazo](https://i.gyazo.com/21b4f39bd6d3d28e9be13323d8bfaa3a.png)](https://gyazo.com/21b4f39bd6d3d28e9be13323d8bfaa3a)


# テーブル設計

## usersテーブル

| Column             | Type     | Options      |
| ------------------ | -------- | ------------ |
| email              | string   | unique: true |
| encrypted_password | string   | null: false  |

### Association

- has_many :gifts
- has_many :interests
- has_many :items


## giftsテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| status_id   | integer    | null: false       |
| name        | string     | null: false       |
| partner     | string     |                   |
| event_date  | date       |                   |
| event       | string     |                   |
| shop        | string     |                   |
| price       | integer    |                   |
| memo        | text       |                   |
| user        | references | foreign_key: true |

### Association

- belongs_to :user


## interestsテーブル

| Column      | Type       | Options           |
| ----------- | ---------- | ----------------- |
| name        | string     | null: false       |
| price       | integer    |                   |
| memo        | text       |                   |
| user        | references | foreign_key: true |

### Association

- belongs_to :user


## itemsテーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| name     | string     | null: false       |
| price    | integer    |                   |
| memo     | text       |                   |
| shop     | string     |                   |
| shopinfo | text       |                   |
| user     | references | foreign_key: true |

### Association

- belongs_to :user

