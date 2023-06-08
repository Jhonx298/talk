# テーブル設計
[![Image from Gyazo](https://i.gyazo.com/7eb0e1dd3ce24ae9eb38f6ec1aa76b0f.png)](https://gyazo.com/7eb0e1dd3ce24ae9eb38f6ec1aa76b0f)

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

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| theme_name    | string | null: false |
| theme_content | string | null: false |

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


# アプリケーション名
Talk

# アプリケーション概要
暇な時、質問、相談などしたいときにユーザー同士とチャットができるコミュニケーションサイト。

# URL
https://talk-3mzf.onrender.com

# テスト用アカウント
| ・BASIC認証パスワード: 2222          |
| ・BASIC認証ID: jhon                |
| ・メールアドレス:  sample@sample.com |
| ・パスワード: sample1               |

# 利用方法
・ログインページでログインまたは新規登録を行う。
・投稿ページにてテーマまたは概要欄に要件を記入する。
・メッセージページで自信が投稿したテーマに沿ってユーザー同士しとチャットができる。
・またはユーザーが投稿したテーマに参加してチャットに参加する。

# アプリケーションを作成した背景
コロナをテーマに自宅待機する方々の助けになればと思い、暇な時間を無駄にしないもしくはストレスの軽減になればと思いTalkアプリを作成するきっかけになりました。アプリを利用することによって生活がより豊かになり、
コミュニケーション能力の向上に繋がるメリットにもなると思います。

# 洗い出した要件
https://docs.google.com/spreadsheets/d/1c5z_yNMwRgZYg_rqu8yK_JTGySrpYRmiXuW52DOb2Qs/edit?usp=sharing

# ローカルでの動作方法
以下の手順で行う↓
| ・git clone https://github.com/Jhonx298/talk.git |
| ・cd talk                                        |
| ・bundle install                                 |
| ・rails db:create                                |
| ・rails db:migrate                               |

# 実装予定の機能
・ユーザー詳細 プロフィールページ：名前、テーマ、削除、編集、更新

# 工夫したポイント
見栄えを良くすためのレイアウトの構成、デザインに工夫を重ねました。
「緑」、アプリのロゴマークにタネのイラストを入れました。
チャットすることによって何か知識が芽生えればと思い考案しました。

まだまだ入れないといけない機能がたくさんあるので順次実装を行なって、
より使いやすいアプリになるよう努めます。


