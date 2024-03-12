source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.4"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "7.0.8"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", "~> 6.0"

# Bundle and transpile JavaScript [https://github.com/rails/jsbundling-rails]
gem "jsbundling-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Bundle and process CSS [https://github.com/rails/cssbundling-rails]
gem "cssbundling-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", "~> 5.0"

# Execute jobs in the background [https://github.com/mperham/sidekiq]
gem "sidekiq", "~> 7.0"

# A Ruby gem to load environment variables from `.env`.
gem "dotenv-rails"

# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff
gem "rails-i18n", "~> 7.0.0"

# Simple and safe way to dynamically render error pages or JSON responses for Rails apps
gem 'rambulance'

# Easiest way to add multi-environment yaml settings to Rails, Sinatra, Pandrino and other Ruby projects.
gem 'config'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
  # Reduces boot times through caching; required in config/boot.rb
  gem "bootsnap", require: false
  gem "rspec-rails"
  gem "rails-flog", "~> 1.6", :require => "flog"
  gem 'faker'
  gem "rubocop", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
end

group :development do
  gem "web-console"
  gem "rack-mini-profiler"
  gem "letter_opener_web"
  gem "rails-erd"
  gem "rails_best_practices"
  gem "brakeman"
  gem "bullet"
  gem "bundler-audit"
  gem "active_record_query_trace"
  gem "better_errors"
  gem "binding_of_caller"
  gem "annotate"
  gem 'debride'
  gem 'debride-erb'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
