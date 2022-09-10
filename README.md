【アプリ概要】
どういう用途のサービスなのか？簡潔に説明する

※注意点※
直感的に一瞬で理解できるように

【機能一覧】

・手取り額＋固定費(食費、家賃、光熱費、通信費等)の入力で計算してくれる機能
・ログイン機能
・欲しいものを複数登録できる機能
・欲しいものの優先順位を登録できる機能
・進捗確認機能
・ライトモードとダークモードの切り替え機能

【技術一覧】

■ 言語 ■
Ruby 3.1.2(安定版)
■ フレームワーク ■
Ruby on Rails v7.0.4(最新)
■ テンプレートエンジン ■
slim
■ テスト ■
RSpec
■ ライブラリ ■
puma', '~> 3.11'
<!-- アセットパイプラインのコンパイル時にsassにも対応する -->
gem 'sass-rails', '~> 5.0'
<!-- JavaScriptを圧縮してくれる(if_elseを三項演算子にしてくれたりホワイトスペースを削除したり) -->
gem 'uglifier', '>= 1.3.0'
<!-- Sprocketsの補助？単体でjsを読み込む場合もあるらしい -->
gem 'mini_racer', platforms: :ruby
<!-- digestやauthenticate等の対応 -->
gem 'bcrypt'
<!-- coffeeが使えるようにする -->
gem 'coffee-rails', '~> 4.2'
<!-- 画面遷移を高速化 -->
gem 'turbolinks', '~> 5'
<!-- JSONファイルを簡単に生成できるようにする -->
gem 'jbuilder', '~> 2.5'
<!-- railsの起動時間を短縮してくれる -->
gem 'bootsnap', '>= 1.1.0', require: f
<!-- railsをslimに対応させる -->
gem 'slim-rails'
<!-- htmlをslimにコンバートする -->
gem 'html2slim'

<!-- 各文言の日本語化 -->
gem 'rails-i18n'

<!-- データベースをMySQLに対応させる -->
gem 'mysql2'

<!-- 環境変数を管理するgem。.envファイルに各種パスワードやネットに公開したくない情報を自動で読み取ってくれる -->
gem 'dotenv-rails'
<!-- デバッグで使用する -->
gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
<!-- RSpecに対応させる -->
gem 'rspec-rails', '~> 3.7'
<!-- RSpecで使用するfixtureの役割 -->
gem 'factory_bot_rails', '~> 4.11'


<!-- 開発環境のみ -->
group :development do
<!-- デフォルトエラーページで起動できるコンソール機能 -->
gem 'web-console', '>= 3.3.0'
<!-- ファイルの変更を検知して、可能であれば自動で対応する -->
gem 'listen', '>= 3.0.5', '< 3.2'
アプリケーションプリローダー。常にアクティブにしてテストやタスクの処理を高速化できる
gem 'spring'
<!-- springのファイルシステムの変更検知方法をpollingからlistenに変更してくれる -->
gem 'spring-watcher-listen', '~> 2.0.0'
end

<!-- テスト環境のみ -->
<!-- ブラウザテストを簡単に行えるようにする。ウェブブラウザでの操作をエミューレートできるようになる -->
gem 'capybara'
<!-- Webブラウザの動作を自動化する -->
gem 'selenium-webdriver'
gem 'webdrivers'

<!-- windowsの何かに必要らしい -->
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]



↓後に導入

next.js

【環境構築】

docker

↓後に導入

circleCI

【コード管理】

github

【デプロイ】

AWS

【ワイヤーフレーム・デザインカンプ】

