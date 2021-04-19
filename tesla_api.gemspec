require File.expand_path("../lib/tesla_api/version", __FILE__)

Gem::Specification.new do |spec|
  spec.name = "tesla_api"
  spec.version = TeslaApi::VERSION
  spec.authors = ["Tim Dorr"]
  spec.email = ["timdorr@timdorr.com"]
  spec.summary = "A wrapper for the Tesla JSON API"
  spec.description = "Check the state of your Tesla Model S and issue basic commands. Stream data from the car's telematics system."
  spec.homepage = "https://github.com/timdorr/tesla-api"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\0")
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "async-websocket"
  spec.add_dependency "faraday"
  spec.add_dependency "faraday_middleware"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "rotp", "~> 6.2"
  spec.add_development_dependency "standard", "~> 1.0"
  spec.add_development_dependency "vcr", "~> 6.0"
  spec.add_development_dependency "webmock", "~> 3.0"
  spec.add_development_dependency "dotenv", "~> 2.0"
end
