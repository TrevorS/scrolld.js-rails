# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrolld.js-rails/version'

Gem::Specification.new do |spec|
  spec.name          = "scrolld.js-rails"
  spec.version       = ScrolldJs::Rails::VERSION
  spec.authors       = ["Trevor Strieber"]
  spec.email         = ["trevor@strieber.org"]
  spec.summary       = %q{This gem packages scrolld.js for the Rails 3.1+ asset pipeline.}
  spec.description   = %q{Scrolld.js JS for the Rails 3.1+ asset pipeline.}
  spec.homepage      = "http://github.com/TrevorS/scrolld.js-rails"
  spec.license       = "MIT"

  spec.files         = Dir['{lib,vendor}/**/*'] + ['LICENSE.txt', 'README.md']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'jquery-rails', '>= 1.0.17'
end
