source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.0.2"

gem "rails", "~> 7.0.0.alpha2"
gem "sqlite3", "~> 1.4"
gem "puma", "~> 5.0"
gem "jsbundling-rails", "~> 0.1.0"
gem "cssbundling-rails"
gem "turbo-rails", ">= 0.7.11"
gem "stimulus-rails", ">= 0.4.0"
# gem "jbuilder", "~> 2.7"
gem "redis", "~> 4.0"
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
gem "bootsnap", ">= 1.4.4", require: false
gem "faker"
gem "devise", git: "https://github.com/heartcombo/devise", branch: "main"
gem "friendly_id"
gem "name_of_person"

group :development, :test do
  gem "debug", ">= 1.0.0", platforms: %i[mri mingw x64_mingw]
  gem "standard", "~> 1.3", require: false
  gem "rspec-rails", "~> 4.1.0"
  gem "factory_bot_rails"
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console", ">= 4.1.0"
  gem "fuubar", "~> 2.5", ">= 2.5.1"
  gem "guard", "~> 2.17"
  gem "guard-rspec", "~> 4.7", ">= 4.7.3"
  gem "rubocop"
  gem "rubocop-rails"
  gem "rubocop-rspec"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara", ">= 3.26"
  gem "selenium-webdriver"
  gem "webdrivers"
  gem "simplecov"
end
