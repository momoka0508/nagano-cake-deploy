# Nagano Cake
![Image](https://user-images.githubusercontent.com/82991184/123375367-97613000-d5c3-11eb-82d1-a40da58b4580.jpg)

# 概要
長野県にある小さな洋菓子店「ながのCAKE」の商品を通販するためのECサイト

# 背景
元々近隣住民が顧客だったが、昨年始めたInstagramから人気となり、全国から注文が来る
ようになった。
InstagramのDMやメールで通販の注文を受けていたが、情報管理が煩雑になってきたため、
管理機能を含んだ通販サイトを開設しようと思い至った。

# 通販について
* 通販では注文に応じて製作する受注生産型。
* 現在通販での注文量は十分に対応可能な量のため、1日の受注量に制限は設けていません。
* 送料は1配送につき全国一律800円。
* 友人や家族へのプレゼントなど、注文者の住所以外にも商品を発送可能。
* 支払方法はクレジットカード、銀行振込から選択可能。

# 用語の定義
* 顧客：ながのCAKEの商品を購入する人（客）
* 会員：ECサイトにユーザー登録している顧客
* ECサイト：顧客が利用するサイト
* 管理サイト：店で働く事務員・パティシエ等が利用するサイト（管理者用サイト）
* ステータス
  * 注文ステータス：注文の状態遷移を表す
  * 製作ステータス：注文に紐付く注文商品の状態遷移を表す
  * 販売ステータス：商品の販売状況を表す。現状、販売中・売り切れの2パターンがある<br>販売停止商品は「売切れ」をセットする
  * 会員ステータス：現状、有効・退会の2パターンがある
  * ジャンル：商品の種類<br>現状、ケーキ・プリン・焼き菓子・キャンディの4ジャンルある
  * 注文個数：1回の注文に紐付く注文個数の合計<br>例）商品Aを3個、商品Bを2個注文→注文個数は5
  * 商品小計：商品単価（税込）x個数<br>例）1,200円（税込）の商品を2個購入=商品小計は2,400円

# 実装機能
## 顧客側
|機能名|説明|非ログイン時<br>利用可否|
|---|---|---|
|ログイン機能|・メールアドレス、パスワードでログインできる。<br>・ログイン時のみ利用できる機能が利用できるようになる。|○|
|ログアウト機能|・ログインしている状態からログアウト状態にする。<br>・ログイン時のみ利用できる機能が利用できなくなる。|×|
|商品一覧表示機能|・商品を一覧表示する。<br>・検索結果を表示する場合は、検索条件に当てはまる商品のみ一覧表示する。|○|
|商品詳細情報表示機能|・商品一覧画面で選択した商品の詳細情報を表示する。<br>・カート追加機能が表示されている。|○|
|カート追加機能|・カートに商品を追加することができる。|×|
|カート一覧機能|・カートの中身を一覧表示することができる。|×|
|カート編集機能|・カートの中身の個数を変更したり、削除することができる。|×|
|注文機能|・カートの中身の購入をすることができる。<br>・支払方法や発送先を設定することができる。|×|
|会員情報編集機能|・登録している情報を編集することができる。|×|
|退会機能|・退会手続きをすることができる。|×|
|配送先追加・編集機能|・登録している配送先を一覧で確認することができる。<br>・配送先の新規追加・修正・削除をすることができる。|×|
|注文履歴一覧表示機能|・過去の注文概要を一覧で確認することができる。|×|
|注文履歴詳細表示機能|・注文の詳細(注文商品や個数など)を確認することができる。|×|
## 管理者側
|機能名|説明|非ログイン時<br>利用可否|
|---|---|---|
|ログイン機能|・メールアドレス、パスワードでログインできる。<br>・ログイン時のみ利用できる機能が利用できるようになる。|○|
|ログアウト機能|・ログインしている状態からログアウト状態にする。<br>・ログイン時のみ利用できる機能が利用できなくなる。|×|
|注文履歴一覧表示機能|・過去の注文概要を一覧で確認することができる。|×|
|注文履歴詳細表示機能|・注文の詳細(注文商品や個数など)を確認することができる。<br>・注文ステータス、製作ステータスを変更することができる。|×|
|顧客一覧表示機能|・顧客情報を一覧で確認することができる。|×|
|顧客詳細情報表示機能|・顧客の詳細情報を確認することができる。<br>・顧客のステータス(有効/退会)を切り替えることができる。|×|
|商品一覧表示機能|・登録商品を一覧で確認することができる。|×|
|商品詳細情報表示機能|・商品の詳細情報を確認することができる。|×|
|商品情報変更機能|・商品の登録情報を変更することができる。<br>・販売ステータスを変更することができる。|×|
|ジャンル設定機能|・ジャンルの追加・変更を行うことができる。|×|

# 使用方法
まず、ローカル環境に何かしらのディレクトリを作成します。
```
$ mkdir tyantyans
```
そしたら、作成したディレクトリにリモートリポジトリをクローンします。
```
$ git clone git@github.com:TyanTyans/nagano_cake.git tyantyans
```
作成したディレクトリに移動します。
```
$ cd tyantyans
```
Gemをインストールします。
```
$ bundle install
```
次に、データベースへのマイグレーションを実行します。
```
$ rails db:migrate
```
管理者用のメールアドレスとパスワードをデータベースに登録します。
```
$ rails db:seed
```
最後に、サーバーを立ち上げます。
```
$ rails s
```
ブラウザでの主なURLは以下の通りです。
* ホームページ；"/"
* 管理者ログインページ；"/admins/sign_in"

# 資料
> [要件定義書](https://wals.s3-ap-northeast-1.amazonaws.com/curriculum/ec_site/design_documents/commit_ecsite_rdd.pdf)
>
> [機能一覧](https://wals.s3-ap-northeast-1.amazonaws.com/curriculum/ec_site/design_documents/ecsite_functions_list.pdf)
>
> ## 管理者用側
>
>> [UI Flows](https://s3-ap-northeast-1.amazonaws.com/wals/curriculum/ec_site/design_documents/uiflows_admin.png)
>>
>> [ワイヤーフレーム](https://s3-ap-northeast-1.amazonaws.com/wals/curriculum/ec_site/design_documents/wire_admin.pdf)
>
> ## エンドユーザー側
>
>> [UI Flows](https://s3-ap-northeast-1.amazonaws.com/wals/curriculum/ec_site/design_documents/uiflows_ec.png)
>>
>> [ワイヤーフレーム](https://s3-ap-northeast-1.amazonaws.com/wals/curriculum/ec_site/design_documents/wire_ec.pdf)

# 設計書
ER図
<details>
<summary>ここを押してね</summary>

![ER図](https://user-images.githubusercontent.com/82991184/123381851-39851600-d5cc-11eb-85d9-cceed10fbb98.jpg)

</details>
テーブル定義書

<details>
<summary>ここを押してね</summary>

![テーブル定義書1](https://user-images.githubusercontent.com/82991184/123381635-f62aa780-d5cb-11eb-9ecf-8cb8fcb7e639.jpg)
![テーブル定義書2](https://user-images.githubusercontent.com/82991184/123381653-f9be2e80-d5cb-11eb-851f-8e1cc69256fc.jpg)
![テーブル定義書3](https://user-images.githubusercontent.com/82991184/123381663-fc208880-d5cb-11eb-9f49-2cf25cae5ba6.jpg)

</details>
アプリケーション詳細設計

<details>
<summary>ここを押してね</summary>

![アプリケーション詳細設計](https://user-images.githubusercontent.com/82991184/123382386-dba4fe00-d5cc-11eb-8cbf-124ec0e8cd74.jpg)

</details>

# テスト用アカウント
【管理者用アカウント；ログイン】
* メールアドレス；admin@gmail.com
* パスワード；tyantyans
【顧客用アカウント；ログイン】
* メールアドレス；user@gmail.com
* パスワード；testtest

# 追加 Gem
* refile
* refile-mini_magick
* devise
* font-awesome-sass
* jquery-rails
* jquery-turbolinks
* kaminari
* bootstrap
* will_paginate
* will_paginate-bootstrap4
* rails-i18n

# 使用言語
* HTML&CSS
* Ruby(2.6.3)
* Ruby on rails (5.2.6)
* JavaScript

# 開発者
チーム名 ちゃんちゃんず

メンバー

* あべちゃん
* うえちゃん
* ももちゃん

<table>
  <tr>
    <td align="center">
      <a href="https://github.com/yuki-zirushi">
        <img width="80" src="https://user-images.githubusercontent.com/81721112/123467958-17bb7b80-d62c-11eb-9dc9-a637deba70d3.png"><br>
        あいちゃん<br>
        
        [yuki-zirushi](https://github.com/yuki-zirushi)
        
      </a>
    </td>
  </tr>
</tabel>
