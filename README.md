# README

# アプリ名
BPD(Baseball Player Database)

# 概要
野球選手の試合の出場成績を記録することができる。
記録を続けることで通算成績の算出も可能。

# 制作背景
学生野球では野球ノートを書いている部活も多いが、これをデジタル化できるのではないかと思い制作。
さらには毎日記録することで、選手個人の課題・長所などの発見に繋がり、モチベーション維持の一助ともなりうる。

# 実装予定の内容
・ユーザー管理機能
・成績記録機能
・成績合計機能
・成績一覧表示機能
・成績編集機能
・メモ機能

# DB設計

## usersテーブル

| column   | type   | option      | 
| -------- | ------ | ----------- | 
| nickname | string | null: false | 
| email    | string | null: false | 
| password | string | null: false | 

### association
- 

### statsテーブル

| column           | type       | option                         | 
| ---------------- | ---------- | ------------------------------ | 
| date             | date       | null: false                    | 
| text             | string     | null: false                    | 
| position_id      | string     |                                | 
| batting_order_id | string     |                                | 
| kiyou_id         | string     | null: false                    | 
| user             | references | null: false, foreign_key: true |

### fieldersテーブル

| column         | type       | option                         | 
| -------------- | ---------- | ------------------------------ | 
| daseki         | integer    |                                | 
| hit            | integer    |                                | 
| two_base_hit   | integer    |                                | 
| three_base_hit | integer    |                                | 
| homerun        | integer    |                                | 
| daten          | integer    |                                | 
| run            | integer    |                                | 
| strike_out     | integer    |                                | 
| walk_dead      | integer    |                                | 
| sacrifice      | integer    |                                | 
| steal          | integer    |                                | 
| error          | integer    |                                | 
| user           | references | null: false, foreign_key: true | 
| stat           | references | null: false, foreign_key: true | 

### pitchersテーブル

| column       | type       | option                         | 
| ------------ | ---------- | ------------------------------ | 
| innnig       | integer    |                                | 
| win          | integer    |                                | 
| lose         | integer    |                                | 
| hold         | integer    |                                | 
| save         | integer    |                                | 
| p_hit        | integer    |                                | 
| p_homerun    | integer    |                                | 
| p_strike_out | integer    |                                | 
| p_walk_dead  | integer    |                                | 
| p_run        | integer    |                                | 
| jiseki       | integer    |                                | 
| user         | references | null: false, foreign_key: true | 
| stat         | references | null: false, foreign_key: true | 

### memosテーブル
| column | type       | option                         | 
| ------ | ---------- | ------------------------------ | 
| memo   | text       | null: false                    | 
| stat   | references | null: false, foreign_key: true | 

### totalsテーブル
| column  | type       | option                         | 
| ------- | ---------- | ------------------------------ | 
| user    | references | null: false, foreign_key: true | 
| stat    | references | null: false, foreign_key: true | 
| fielder | references | null: false, foreign_key: true | 
| pitcher | references | null: false, foreign_key: true | 