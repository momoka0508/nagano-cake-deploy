source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.4'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# 開発環境とテスト環境のみ対象
group :development, :test do
  gem 'sqlite3', '~> 1.3.6'
  gem 'byebug', platform: :mri
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem "refile", require: "refile/rails", github: 'manfe/refile'
gem "refile-mini_magick"

gem "devise"

gem 'bootstrap', '~> 4.5'
gem 'jquery-rails'
gem 'jquery-turbolinks'

gem 'kaminari','~> 1.2.1'

#ページネーション関連
gem 'will_paginate', '3.1.7'
#ページネーション専用bootstrap
gem 'will_paginate-bootstrap4'

#エラーメッセージの日本語化gem
gem 'rails-i18n'

gem 'font-awesome-sass', '~> 5.13'

#kaminariのbootstrap利用
gem 'bootstrap4-kaminari-views'

# 本番環境、Postgres DBが使える、Herokuで必要
group :production do
  gem 'pg', '1.1.4'
end