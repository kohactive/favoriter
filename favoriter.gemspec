# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'favoriter/version'
require 'rubygems'

Gem::Specification.new do |spec|
  spec.name          = "favoriter"
  spec.version       = Favoriter::VERSION
  spec.authors       = ["Lawrence Davis"]
  spec.email         = ["lawrence@kohactive.com"]
  spec.description   = %q{Add favoriting functionality to a Rails project.}
  spec.summary       = %q{Add favoriting functionality to a Rails project.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "thor"
end
