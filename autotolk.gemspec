# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'autotolk/version'

Gem::Specification.new do |spec|
  spec.name          = "autotolk"
  spec.version       = Autotolk::VERSION
  spec.authors       = ["Joanna Rajewska"]
  spec.email         = ["contact@rajewska.asia"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{This gem makes locales in tolk translate automatically (using bing).}
  spec.homepage      = "https://github.com/rajaaa92/autotolk"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_dependency "bing_translator", "~> 6.2.0"
end

