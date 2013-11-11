# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'celluloid/eventsource/version'

Gem::Specification.new do |spec|
  spec.name          = "celluloid-eventsource"
  spec.version       = Celluloid::EventSource::VERSION
  spec.authors       = ["Leo Correa"]
  spec.email         = ["lcorr005@gmail.com"]
  spec.description   = %q{Celluloid::IO based library to consume Server-Sent Events.}
  spec.summary       = %q{celluloid-eventsource is a gem to consume SSE streaming API.}
  spec.homepage      = "https://github.com/Tonkpils/celluloid-eventsource"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'celluloid-io', '~> 0.15'
  spec.add_dependency 'http_parser.rb', '~> 0.5'

  spec.add_development_dependency "rspec", '~> 2.14'
  spec.add_development_dependency "rspec-pride", '~> 2.2'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake", '~> 10.1'
  spec.add_development_dependency "pry", '~> 0.9'
end
