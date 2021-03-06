ENV["RACK_ENV"] = "test"
abort("DATABASE_URL environment variable is set") if ENV["DATABASE_URL"]

require_relative '../config/application.rb'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.syntax = :expect
  end

  config.mock_with :rspec do |mocks|
    mocks.syntax = :expect
    mocks.verify_partial_doubles = true
  end

  config.run_all_when_everything_filtered = true
  config.example_status_persistence_file_path = "tmp/rspec_examples.txt"
  config.order = :random

  config.include Rack::Test::Methods
end
