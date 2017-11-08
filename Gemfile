source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "rails", "~> 5.1.4"
gem "sqlite3"
gem "puma", "~> 3.7"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"
gem "devise"
gem "carrierwave", "~> 1.0"
gem "font-awesome-sass", "~> 4.7.0"
gem "bootstrap-kaminari-views"
gem "mini_magick", "3.8.0"
gem "chosen-rails"
gem "cocoon"
gem "omniauth-oauth2", "1.3.1"
gem "omniauth-facebook"
gem "kaminari"
gem "best_in_place", "~> 3.0.1"
gem "pygments.rb", "~> 0.6.3" 
gem "redcarpet", "~> 3.3", ">= 3.3.4"
gem "ckeditor"
gem "truncate_html"
gem "faker"
gem "ransack"
gem "puret"
gem "acts_as_votable", "~> 0.11.1"
gem "jquery-rails"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
  gem "bullet"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
