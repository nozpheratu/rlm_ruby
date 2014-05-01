# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rlm_ruby/version'

Gem::Specification.new do |spec|
  spec.name          = "rlm_ruby"
  spec.version       = RlmRuby::VERSION
  spec.authors       = ["Cyle Hunter"]
  spec.email         = ["cyle@cogmation.com"]
  spec.summary       = "Ruby wrapper for Reprise License Manager"
  spec.description   = nil
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"
  spec.add_runtime_dependency "json"

end
