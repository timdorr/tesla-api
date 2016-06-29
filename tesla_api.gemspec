require File.expand_path('../lib/tesla_api/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'tesla_api'
  spec.version       = TeslaApi::VERSION
  spec.authors       = ['Tim Dorr']
  spec.email         = ['timdorr@timdorr.com']
  spec.summary       = %q{A wrapper for the Tesla API}
  spec.description   = %q{Check the state of your Tesla Model S and issue basic commands. Stream data from the car's telematics system.}
  spec.homepage      = 'https://github.com/timdorr/model-s-api'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'httparty'
  spec.add_dependency 'faye-websocket'
  spec.add_dependency 'em-http-request'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.1'
  spec.add_development_dependency 'faker', '~> 1.4'
  spec.add_development_dependency 'vcr', '~> 2.9'
  spec.add_development_dependency 'webmock', '~> 1.20'
  spec.add_development_dependency 'dotenv', '~> 1.0'
  spec.add_development_dependency 'simplecov', '~> 0.9'
  spec.add_development_dependency 'coveralls'
end
