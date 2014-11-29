source 'https://rubygems.org'

ruby '2.1.2'

gem 'rails', '4.2.0.rc1'
gem 'puma'
gem 'pg'
gem 'sidekiq', git: 'git://github.com/mperham/sidekiq.git'
gem 'redis-rails'
gem 'sinatra', '>= 1.3.0', require: nil
gem 'redis-rack-cache'

gem 'rails_admin', git: 'git://github.com/superacidjax/rails_admin.git'

gem 'aasm'
gem 'redcarpet'
gem 'pygments.rb'

gem 'friendly_id', '~> 5.0.0'

gem 'sorcery'

gem 'stripe', :git => 'https://github.com/stripe/stripe-ruby'
gem 'stripe-ruby-mock', '~> 2.0.0'

gem 'decent_exposure'
gem 'bourbon'
gem 'neat'

gem 'paper_trail', '~> 3.0.6'

gem 'commontator', '~> 4.8.0'
gem 'acts_as_votable'

gem 'responders', '~> 2.0'

gem 'high_voltage'

gem 'haml-rails'
gem 'font-awesome-sass', '~> 4.2.0'
gem 'sass-rails', '~> 5.0.0.beta1'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'

gem 'jquery-rails', '~> 4.0.0.beta2'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

group :development, :test do
  gem 'byebug'
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0.0.beta4'
  gem 'spring'
  gem 'rspec-rails'
  gem 'fabrication'
  gem 'faker'
  gem 'pry-rails'
end

group :test do
  gem 'codeclimate-test-reporter', require: nil
  gem 'capybara'
  gem 'database_cleaner'
  gem 'dirty'
  gem 'launchy'
  gem 'minitest'
  gem 'selenium-webdriver'
  gem 'timecop'
end

group :prodution do
  gem 'heroku-deflater'
  gem 'rails_12factor'
  gem 'newrelic_rpm'
end
