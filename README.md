# UCS5
制作期間： 7月9日~7月20日 
<!-- (未完成)  
URL: https://ucsk.herokuapp.com  
アカウント  
- email:  user_001@gmail.com  
- pass:   user_001  
＊ 本番環境ではBootstrapが何故か有効になっていないため、現状レイアウトが崩れています。  
＊ 問題点への改善は現状保留し、個人作成アプリ2号が終わると思われる8/20頃より再調整に入る予定 -->

## 名前の由来[MADE TO STICK](https://heathbrothers.com/download/mts-made-to-stick-model.pdf)
- バイブル「MADE TO STICK」で言われるSUCCESSの原則の中から、unexpected, concrete, simpleの３つを開発の３大要素と掲げる
- 5はモデル設計から実行でつまり、縮小すること、5回行ったため。実力不足なども浮き彫りになり、限られた期間でどのようにアウトプットするかを思考を重ねた。

## コンセプト[KEYNOTE](https://www.icloud.com/keynote/0ljrY_4-toh4B5krp2-sBwqmw)
- 自身の教育関係への興味、想い
- 自分の学習などをまとめる暗記カードを作る
- カリキュラムで習った内容を盛り込み、踏襲して形にする練習作品

## アプリ説明
![home.png](https://user-images.githubusercontent.com/61781906/90238986-cf56fd00-de61-11ea-84ee-e1a4459a5e7e.png)
ログイン後、トップに簡易説明がございます。新規学習グループを作成を選択することで学習グループが作成されます。  
  
![make_group.png](https://user-images.githubusercontent.com/61781906/90239515-99664880-de62-11ea-8b1a-e7053914ba38.png)
  
![add_card.png](https://user-images.githubusercontent.com/61781906/90239557-aedb7280-de62-11ea-9ae2-61945b3eaf31.png)
トップのサイドバーに学習グループが表示され、「カードを追加する」を選択することで「問題」と「回答」がセットになった暗記カードを作成することができます。  
カードはAJAX通信で連続して、作成することができます。  
現状、１グループでの保存するカード量の限界はありません。  
  
![flip_card.png](https://user-images.githubusercontent.com/61781906/90239621-cb77aa80-de62-11ea-8d06-33aace88f2fc.png)
カードを保存後、トップに戻り、学習グループを選択することで、暗記カードを表示させることができます。  
  
![flip_card.gif](https://user-images.githubusercontent.com/61781906/90240702-bd2a8e00-de64-11ea-9464-4ed96fc55b08.gif)
表示されているパネルをクリックすることで、反転し答えが表示されます。  
また、次へのボタンを押すことで、問題が切り替わります。問題が切り替わる順番は現状完全なランダムとなっています。  
その他のボタンに関しては、現在の使用では使いません。他のモデルを絡めて今後機能を実装していく予定です。  

<!-- ## アプリ作成後、残った課題
- デプロイした時に、herokuではBootstrapのレイアウトを正確に反映することができていない
- 上記の問題はwebpackとsprocketsの区別無く、プラグインした結果と考えられるため、最初から作品を作り直しすことも検討
- 実装できていないボーダーカラーに対応するデータを入れるモデルの作成を
- 実装できていないユーザー別に正答率を記録するモデルの作成
- 実装できていない教員用コントローラーと上記正答率、ログイン率などをグラフ化するビューと仕組みの作成 -->

## DB設計
## usersテーブル
|column    |type      |options    |
|----------|----------|-----------|
|name      |string    |null: false|
|email     |string    |null: false|
|password  |string    |null: false|

## Groupsテーブル
|column    |type      |options    |
|----------|----------|-----------|
|name      |string    |null: false|

## GroupUsersテーブル
|column    |type      |options    |
|----------|----------|-----------|
|user_id   |references|foreign_key|
|group_id  |references|foreign_key|

## Panelsテーブル
|column    |type      |options    |
|----------|----------|-----------|
|question  |string    |           |
|answer    |string    |           |
|user_id   |references|foreign_key|
|group_id  |references|foreign_key|

<!-- ## NOTE -->