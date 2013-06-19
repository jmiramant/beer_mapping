# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beer_mapping/version'

Gem::Specification.new do |spec|
  spec.name          = "beer_mapping"
  spec.version       = BeerMapping::VERSION
  spec.authors       = ["jmiramant"]
  spec.email         = ["josh@miramant.me"]
  spec.description   = 'A gem for accessing the Beer Mapping API'
  spec.summary       = 'A gem for accessing the Beer Mapping API'
  spec.homepage      = "https://github.com/jmiramant/beer_mapping.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rspec", "~> 2.6"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  gem.add_dependency 'faraday', '~> 0.8.0'
  gem.add_dependency 'faraday_middleware', '~> 0.8'
  gem.add_dependency 'hashie', '>= 1.1', '< 3'
  gem.add_development_dependency 'vcr', '~> 2.0'
  
end
