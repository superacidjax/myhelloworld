ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'webmock/rspec'

WebMock.disable_net_connect!(allow_localhost: true, allow: "codeclimate.com")


Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

FakeStripeRunner.boot

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"



  config.infer_spec_type_from_file_location!
end
