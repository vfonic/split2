source 'https://rubygems.org'
ruby '2.3.3'
gem 'rails', '~> 4.2.7.1'

git_source :github do |repo|
  repo = "#{repo}/#{repo}" unless repo.include? '/'
  "https://github.com/#{repo}.git"
end

gem 'carrierwave'
gem 'figaro'
gem 'jquery-rails'
gem 'liquid-rails', github: 'Seitk/liquid-rails', ref: 'a8519bf'
gem 'pg'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
group :development, :test do
  gem 'byebug'
  gem 'factory_girl_rails'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rspec-rails'
  gem 'rubocop', '~> 0.46.0', require: false
end
group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'guard-rubocop'
  gem 'mail_view'
  gem 'mailcatcher'
  gem 'rb-fchange', require: false
  gem 'rb-fsevent', require: false
  gem 'rb-inotify', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console', '~> 2.0'
end
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'launchy'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'codeclimate-test-reporter', '~> 1.0.0'
end
