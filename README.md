# アプリケーション名
**Gift Life**

# アプリケーション概要
オリジナルアプリケーションとして、ギフト記録、ギフトのアイデア登録のできるアプリケーションを作成しました。また、トップページは、ギフトにお薦めの商品紹介ページとし、管理者のみ編集ができるようにしました。

# URL
https://gift-life.herokuapp.com/

- Herokuでデプロイしているため、Herokuの仕様により本番環境にアクセス頂いた際に画像リンクが切れている可能性がございます。


# ID/Pass

- ID: admin
- Pass: 3333

# テスト用アカウント

- メールアドレス: a@a
- パスワード: aaaaaa

- 管理者メールアドレス: aa@bb
- 管理者パスワード: 555555

# 開発環境	
ruby 2.6.5 / Ruby on Rails 6.0.0 / JavaScript /mysql2 0.4.4 / GitHub / AWS / Heroku / Visual Studio Code 


# 利用方法

- WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。
ただしデプロイ等で接続できないタイミングもございます。その際は少し時間をおいてから接続してください。
- 接続先およびログイン情報については、上記の通りです。
同時に複数の方がログインしている場合に、ログインできない可能性があります。
- ギフト記録方法
テストアカウントでログイン→トップページ(お薦めギフトページ)から、ヘッダーにあるギフト記録ボタンをクリック→ギフト記録一覧ページから、ヘッダーにある登録ボタンをクリック→登録情報入力→ギフト記録一覧に登録情報が追加されます。
- ギフト記録詳細・編集・削除方法
ギフト記録一覧ページから、商品画像などの商品情報をクリックすると、ギフト記録詳細ページへ移動、詳細ページ内の編集・削除ボタンから編集・削除可能になります。
- ギフトアイデア登録・詳細・編集・削除方法
テストアカウントでログイン→トップページまたはギフト記録一覧ページから、ヘッダーにあるギフトアイデアボタンをクリック→ギフトアイデアページから登録、登録後、詳細ページから、編集・削除可能になります。
- お薦めギフト登録方法
上記のテスト用アカウント内の管理者アカウントでログイン→トップページ内の商品登録ボタンをクリック→登録情報入力→トップページ内に登録情報が追加されます。
- お薦めギフト編集・削除方法
上記のテスト用アカウント内の管理者アカウントでログイン→トップページ内の商品情報下にある編集・削除ボタンから編集・削除可能になります。
- 確認後、ログアウト処理をお願いします。

# 目指した課題解決	
贈り物だけを記録できるアプリケーションは存在したのですが、贈り物のアイデアも登録できれば、さらに良いと考え、作成を目指しました。贈り物を考える機会が増え、人に喜んでもらえることを、楽しいと感じる人が、増えることを期待しました。また、アプリケーションを見る楽しみが増えるように、贈り物の参考となる、お薦めの商品紹介ページを取り入れることを考えました。

# 洗い出した要件	
[![Image from Gyazo](https://i.gyazo.com/f97380eaeaebfcfaff1ea8a702fae045.png)](https://gyazo.com/f97380eaeaebfcfaff1ea8a702fae045)
[![Image from Gyazo](https://i.gyazo.com/2f8d048bff8ad97b1b7c7872462d1de5.png)](https://gyazo.com/2f8d048bff8ad97b1b7c7872462d1de5)
[![Image from Gyazo](https://i.gyazo.com/184fe83a4d553b210e7ab1c802510cf3.png)](https://gyazo.com/184fe83a4d553b210e7ab1c802510cf3)
[![Image from Gyazo](https://i.gyazo.com/2db471b2748e7ab62982c95c4c65b600.png)](https://gyazo.com/2db471b2748e7ab62982c95c4c65b600)


# データベース設計	
[![Image from Gyazo](https://i.gyazo.com/21b4f39bd6d3d28e9be13323d8bfaa3a.png)](https://gyazo.com/21b4f39bd6d3d28e9be13323d8bfaa3a)

# GIF
- ログイン前から、トップページのお薦めギフトページが参照できる動画
https://i.gyazo.com/52f716a479b392f98a9d1802e9b8fdea.gif

- ログイン後、トップページ（お薦めギフトページ）、ギフト記録ページ、ギフトアイデアページへ遷移可能になる動画
https://i.gyazo.com/a7f28d9d095c57ac766b736cd927f72e.gif

- ギフト記録の登録フォームから情報を記載して登録ボタンを押すと、ギフト記録一覧に追加される動画
https://i.gyazo.com/b26278532fe58173316ba81aca585750.gif

- ギフト記録ページから登録フォームに遷移し、必要事項を記載しないと、日本語でエラーメッセージが出る動画
https://i.gyazo.com/37b9dfb5ff31497347ccd396ce48168e.gif

- ギフト記録ページから、それぞれの記録情報をクリックすると、ギフト記録詳細ページに遷移し、編集、削除が可能になる動画
https://i.gyazo.com/9614a68e82590265046cdda6d44f633a.gif

- お薦めギフトページにて、商品検索機能の動画
https://i.gyazo.com/89d789b1c5fa1312808f8b287caa46a8.gif

- 管理者アカウントでログインすると、トップページ（お薦めギフトページ）に、商品登録・編集・削除ボタンが現れ、それぞれの機能が可能になる動画
https://i.gyazo.com/bbd2ab797b63616a63925f3b313413bb.gif

- ユーザー新規登録に対するテスト結果の動画
https://i.gyazo.com/4c9b0505e95b340d68d35a5a02bd4256.gif


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

