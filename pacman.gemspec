# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pacman/version'

Gem::Specification.new do |spec|
  spec.name          = "pacman"
  spec.version       = Pacman::VERSION
  spec.authors       = ["Chris Boertien"]
  spec.email         = ["chris@aktionlab.com"]
  spec.summary       = %q{Project management tool}
  spec.description   = %q{Pacman provides a set of tools for easing the creation and management of projects.}
  spec.homepage      = "http://github.com/aktionlab/pacman"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "thor", "~> 0.18.1"
  spec.add_dependency "git", "~> 1.2.6"
  spec.add_dependency "rvm", "~> 1.11.3"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14"
  spec.add_development_dependency "cucumber", "~> 1.3.10"
  spec.add_development_dependency "aruba", "~> 0.5.4"
end
