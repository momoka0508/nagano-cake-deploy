# ✅ What's? NagaNo CaKe

DMM WEBCAMPのチーム学習で集まった "チーム ちゃんちゃんず" による課題成果物です。
長野県の自然豊かな環境をイメージして、優しい雰囲気を纏ったサイトを目指しました。
”インスタグラム発祥のサイト”という背景があるので、10~40代女性をターゲットにしています。
![iOS の画像](https://user-images.githubusercontent.com/82991184/123375367-97613000-d5c3-11eb-82d1-a40da58b4580.jpg)

# ✅ Concept

長野県にある小さな洋菓子店『ながのCAKE』の商品を通販するためのECサイト

# ✅ Backgroud

元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、
全国から注文が来るようになった。
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、
管理機能を含んだ通販サイトを開設しようと思い至った。

# ✅ 環境構築
```
$ git bundle install
$ rails db:migrate
$ rails db:seed
```
管理用アカウント
- email    : test@test.com
- password : tyantyans

# ✅ 使用言語

- HTML&CSS
- Ruby(2.6.3)
- Ruby on rails (5.2.6)
- Javascript

# ✅ 使用Gem（デフォルト除く）
- jquery
- byebug
- refile
- refile-mini-magick
- devise
- bootstrap(4.5)
- kaminari
- will_paginate

# ✅ 設計詳細

- ER図
![ER_nagano_cake-1](https://user-images.githubusercontent.com/82991184/123381851-39851600-d5cc-11eb-85d9-cceed10fbb98.jpg)
- テーブル定義書
![テーブル定義書_nagano_cake xlsx-1](https://user-images.githubusercontent.com/82991184/123381635-f62aa780-d5cb-11eb-9ecf-8cb8fcb7e639.jpg)
![テーブル定義書_nagano_cake xlsx-2](https://user-images.githubusercontent.com/82991184/123381653-f9be2e80-d5cb-11eb-851f-8e1cc69256fc.jpg)
![テーブル定義書_nagano_cake xlsx-3](https://user-images.githubusercontent.com/82991184/123381663-fc208880-d5cb-11eb-9f49-2cf25cae5ba6.jpg)
- ルーティング
![アプリケーション詳細設計_nagano_cake xlsx-1](https://user-images.githubusercontent.com/82991184/123382386-dba4fe00-d5cc-11eb-8cbf-124ec0e8cd74.jpg)


# ✅ About ちゃんちゃんず

- あいちゃん
- あべちゃん
- うえちゃん
- ももちゃん
>>>>>>> develop
