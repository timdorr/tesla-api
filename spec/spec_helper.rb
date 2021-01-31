require "dotenv"
require "vcr"
require "webmock/rspec"

require "tesla_api"

Dotenv.load

VCR.configure do |c|
  c.cassette_library_dir = "spec/cassettes"
  c.hook_into :webmock
  c.default_cassette_options = {record: :once}
  c.configure_rspec_metadata!

  c.define_cassette_placeholder("<TESLA_EMAIL>") { CGI.escape(ENV["TESLA_EMAIL"]) }
  c.define_cassette_placeholder("<TESLA_PASS>") { ENV["TESLA_PASS"] }
  c.define_cassette_placeholder("<TESLA_CLIENT_ID>") { ENV["TESLA_CLIENT_ID"] }
  c.define_cassette_placeholder("<TESLA_CLIENT_SECRET>") { ENV["TESLA_CLIENT_SECRET"] }
  c.define_cassette_placeholder("<TESLA_ACCESS_TOKEN>") { ENV["TESLA_ACCESS_TOKEN"] }
  c.define_cassette_placeholder("<TESLA_REFRESH_TOKEN>") { ENV["TESLA_REFRESH_TOKEN"] }
end

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.disable_monkey_patching!
  config.order = :random
  Kernel.srand config.seed
end
