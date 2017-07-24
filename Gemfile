source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.3'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.0'
gem 'simple_form'
gem 'devise'
gem 'bcrypt'
gem 'cancancan'
gem "twitter-bootstrap-rails"
gem 'material_icons'
gem 'font-awesome-sass', '~> 4.7.0'
gem 'ckeditor'
gem 'paperclip'
gem 'popper_js', '~> 1.9.9'
gem 'toastr-rails'
gem 'sass-rails', '~> 5.0'
gem 'rails_admin', '~> 1.2'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'mailboxer'
gem 'chosen-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5'
  gem 'factory_girl_rails'
  gem 'ffaker'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem "better_errors"
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'cucumber-rails', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'shoulda-matchers'
  gem 'selenium-webdriver'
end



group :production do
  gem 'rails_12factor'
  gem 'pg', '~> 0.18'
end

