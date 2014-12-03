source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.2.0.rc1'
gem 'puma'
gem 'pg'

gem 'aasm'
gem 'acts_as_votable'
gem 'commontator', '~> 4.8.0'
gem 'decent_exposure'
gem 'friendly_id', '~> 5.0.0'

gem 'high_voltage'
gem 'jbuilder', '~> 2.0'
gem 'paper_trail', '~> 3.0.6'
gem 'rails_admin', git: 'git://github.com/superacidjax/rails_admin.git'
gem 'redis-rack-cache'

gem 'redis-rails'
gem 'responders', '~> 2.0'
gem 'sidekiq'
gem 'sinatra', '>= 1.3.0', require: nil
gem 'sorcery'

gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
#gem 'stripe-ruby-mock', '~> 2.0.0'
gem 'bourbon'
gem 'coffee-rails', '~> 4.0.0'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'haml-rails'

gem 'jquery-rails', '~> 4.0.0.beta2'
gem 'jquery-turbolinks'
gem 'neat'
gem 'pygments.rb'
gem 'redcarpet'

gem 'sass-rails', '~> 5.0.0.beta1'
gem 'uglifier', '>= 1.3.0'
gem 'turbolinks'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'byebug'
  gem 'fabrication', git: 'git://github.com/superacidjax/fabrication.git'
  gem 'faker'
  gem 'pry-rails'
  gem 'rspec-rails'
  gem 'spring'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0.beta4'
end

group :test do
  gem 'capybara'
  gem 'capybara_discoball', github: "thoughtbot/capybara_discoball"
  gem 'codeclimate-test-reporter', require: nil
  gem 'database_cleaner'
  gem 'dirty'
  gem 'launchy'
  gem 'minitest'
  gem 'selenium-webdriver'
  gem 'timecop'
  gem 'webmock'
end

group :prodution do
  gem 'heroku-deflater'
  gem 'newrelic_rpm'
  gem 'rails_12factor'
end
