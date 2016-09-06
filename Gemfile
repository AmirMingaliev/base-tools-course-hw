source "https://rubygems.org"

ruby "2.3.1"

gem "rails", "~> 5.0.0"
gem "pg"
gem "puma", "~> 3.0"

gem "bootstrap", "~> 4.0.0.alpha3.1"
gem "coffee-rails", "~> 4.2"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "brakeman", require: false
  gem "bundler-audit", require: false
  gem "byebug", platform: :mri
  gem "coffeelint"
  gem "dotenv-rails"
  gem "jasmine"
  gem "listen", "~> 3.0.5"
  gem "rspec-rails", "~> 3.5"
  gem "rubocop", require: false
  gem "rubocop-rspec", require: false
  gem "scss_lint", require: false
  gem "slim_lint", require: false
end

group :development do
  gem "foreman", require: false
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console"
end

group :production do
  gem "rails_12factor"
end
