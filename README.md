
<!-- アプリケーション名	 -->
アプリケーション概要	このアプリケーションでできることを記述しましょう。
URL	デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。
テスト用アカウント	ログイン機能等を実装した場合は、記述しましょう。またBasic認証等を設けている場合は、そのID/Passも記述しましょう。
利用方法	このアプリケーションの利用方法を説明しましょう。
目指した課題解決	このアプリケーションを通じて、どのような人の、どのような課題を解決したかったかを書きましょう。
洗い出した要件	スプレッドシートにまとめた要件定義を、マークダウンで記述しなおしましょう。
実装した機能についてのGIFと説明	実装した機能について、それぞれどのような特徴があるのか列挙しましょう。GIFを添えることで、イメージがしやすくなります。
実装予定の機能	洗い出した要件の中から、今後実装予定のものがあれば記述しましょう。
<!-- データベース設計	ER図等を添付しましょう。 -->
ローカルでの動作方法	git cloneしてから、ローカルで動作をさせるまでに必要なコマンドを記述しましょう。この時、アプリケーション開発に使用した環境を併記することを忘れないでください（パッケージやRubyのバージョンなど）。



**制作アプリ side-business**
----------

**アイデア**
----------
**■FreeWifi+Free電源のカフェは生活必需のインフラである<br>**
&ensp;&ensp;私は福岡市に引越しした時、真っ先に探したのがスーパーマーケットとFreeWifi＋Free電源のあるカフェでした<br>
**■正確、最新、集約的なFreeWifi+Free電源のカフェの情報は、ググってもありませんでした<br>**
&ensp;&ensp;ここでいう「簡単」の概念はブラウジングではなくスマホ操作で非常に簡単に目的達成できるということ<br>
&ensp;&ensp;もしこのアプリがあれば自分のスマホに入れて使うだろうなぁ、自分で作ってみよう！と思いました<br><br>
**■ターゲット、マネタイズ<br>**
&ensp;&ensp;ターゲット（ペルソナー）はスタバに居そうな中学生〜大学生層、サラリーマン・フリーランス層、セミリタイア層<br>
&ensp;&ensp;彼らは一定時間をPCやスマホでネットアクセスしながら自習したり業務して過ごすノマドワーカースタイル<br>
&ensp;&ensp;ノマドワーカーとは、”遊牧民的”に移動しながら作業する人たちの呼び名です<br>
&ensp;&ensp;このアプリはアプリストアリリースし、スマホサービスメインで、アドセンス広告による収益化を想定<br>

**このアプリで得られる体験**
----------
●ノマドワークに適したFreeWifi+Free電源のカフェをGoogleMap、テキストや画像で表示します<br>
●アプリを開いてすぐに、どんなカフェがあるか具体的な写真で見せて、現在地から行きたいお店まで経路をナビします <br> 
●ユーザーにコメント機能で口コミを共有できます<br>
●お問い合わせフォームで、ユーザー側からの掲載情報更新の要請などに応えます<br>

**実装を完了した機能の一覧**
----------

**1）サインイン機能(devise) <br>**
&emsp;&emsp;最初に名前、email,パスワードを入れてから投稿、閲覧可能とした<br>
**2）CRUD機能（投稿者のみ登録編集削除可） <br>**
&emsp;&emsp;投稿者は情報、画像、コメントを登録、編集、削除可能 <br>
**3）コメント（口コミ）投稿削除機能<br>**
&emsp;&emsp;投稿者はコメントの登録、削除のみ可能<br>
**4）テストの実施（model)<br>**
&emsp;&emsp;RSpec、factory_bot使用<br>



〜リポジトリ〜<br>
https://github.com/hayato90467/side-business<br>

**開発日数**
----------
**作業期間　2020年9月20日　〜 2020年10月12日<br>**
のべ工数　日/時間 <br>


**雑食系サロン等を参考に、自身でマイルストーンを決めて開発作業を実施**
------------------------------
○ GitHubのイシュー＋プルリク活用<br>
○ twitter発信、Qiitaアウトプット投稿(初学者がわかるように)並行<br>
○ UI/UXを整える<br>
○ READMEを整える<br>
○ 実用的なデモデータ登録<br>
○ かんたんログイン機能実装<br>
○ CRUD(create,read,update,destroy)実装<br>
○ Google Maps API地図、マーカー、吹き出し機能実装<br>
○ データベース情報を取得しmap表示する機能実装<br>
○ ユーザーから管理者への問合せフォーム実装<br>
○ スマホビューで破綻しないレスポンシブデザイン実装<br>
○ スクラッチCSSである程度装飾<br>
○ コードに綺麗にする・静的コードチェックアプリ活用<br>
○ RSpecテストを実施<br>
○ Nginx,Unicorn,Puma,Rake,railsサーバー役割理解<br>
○ webサーバー nginx理解活用<br>
○ インフラにAWS/EC2サービス活用(一時VPC,ECR使用,ECSは中止）<br>
○ Docker（コンテナサービス）活用<br>
○ CI/CD CircleCI活用(作業中)<br>


**データベース**
----------


# テーブル設計

## users テーブル

| Column        | Type   | Options     |
| ------------- | ------ | ----------- |
| name          | string | null: false |
| email         | string | null: false |
| password      | string | null: false |

### Association

- has_many :comments

## comments テーブル

| Column                  | Type    | Options                  |
| ----------------------- | ------  | -----------------------  |
| user_id                 | integer | null: false ,foreign_key |
| business_name           | string  | null: false              |
| explanation             | text    | null: false              |
| image                   | integer | null: false              |

### Association

- belongs_to :user
- has_one_attached :image
**使用言語技術**
--------------
言語・フレームワーク<br>
&emsp;&emsp;Ruby2.6.5/Rails6.0.3.2<br>
フロント<br>
&emsp;&emsp;HML/CSS Haml/SCSS<br>
データベース<br>
&emsp;&emsp;MySQL5.6<br>
テスト<br>
&emsp;&emsp;RSpec/factory_bot<br>
インフラ<br>
&emsp;&emsp;AWS <br>
ドメイン・DNS<br>
&emsp;&emsp;AWS <br>
本番環境<br>
&emsp;&emsp;heroku/7.43.2<br>

使用Gem<br>
bulma-rails<br>
devise<br>
rspec-rails/factory_bot_rails<br><br>
actory_bot_rails<br><br>
