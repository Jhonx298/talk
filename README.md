# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| nickname           | string | null: false |
| profile            | string |             |
| email              | string | null: false |
| encrypted_password | string | null: false |

### Association

- has_many :theme_users
- has_many :themes, through: :room_users
- has_many :messages

## theme テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| theme_name | string | null: false |
| comment    | string | null: false |

### Association

- has_many :theme_users
- has_many :users, through: :theme_users
- has_many :messages

## theme_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| theme  | references | null: false, foreign_key: true |

### Association

- belongs_to :theme
- belongs_to :user

## messages テーブル

| Column  | Type       |Options                        |
| ------- | ---------- |------------------------------ |
| content | string     |                               |
| user    | references | null: false, foreign_key:true |
| theme   | references | null: false, foreign_key:true |

### Association

- belongs_to :theme
- belongs_to :user