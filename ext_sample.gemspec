# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ext_sample/version'

Gem::Specification.new do |spec|
  spec.name          = "ext_sample"
  spec.version       = ExtSample::VERSION
  spec.authors       = ["orga"]
  spec.email         = ["orga.shih@gmail.com"]
  spec.summary       = %q{Extension Test.}
  spec.description   = %q{Extension Test.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]
  spec.extensions = %w[ext/ext_sample/extconf.rb]
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.1"
  spec.add_development_dependency "rake-compiler", "~> 0.9"
end
