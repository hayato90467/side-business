# テーブル設計

## users テーブル

| Column        | Type   | Options     |
| --------      | ------ | ----------- |
| name          | string | null: false |
| email         | string | null: false |
| password      | string | null: false |

##c# Association

- has_many :comments

## comments テーブル

| Column                  | Type    | Options     |
| ------                  | ------  | ----------- |
| user_id                 | integer  | null: false ,foreign_key|
| business_name           | string  | null: false |
| explanation             | text    | null: false |
| image                   | integer | null: false |




### Association

- belongs_to :user
- has_many :messages

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user
