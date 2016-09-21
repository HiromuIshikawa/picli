# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'picli/version'

Gem::Specification.new do |spec|
  spec.name          = "picli"
  spec.version       = Picli::VERSION
  spec.authors       = ["Yoshinari Nomura"]
  spec.email         = ["nom@quickhack.net"]

  spec.summary       = %q{CLI client for picasa.}
  spec.description   = %q{CLI client for picasa.}
  spec.homepage      = "https://github.com/yoshinari-nomura/picli"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "picasa"
  spec.add_runtime_dependency "clian"
  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
