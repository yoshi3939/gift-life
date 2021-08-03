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
| name        | string     | null: false       |
| partner     | string     |                   |
| event_date  | date       |                   |
| event       | string     |                   |
| shop        | string     |                   |
| price       | integer    |                   |
| memo        | text       |                   |
| status_id   | integer    | null: false       |
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
