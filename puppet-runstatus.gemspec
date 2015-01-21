# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'puppet/runstatus/version'

Gem::Specification.new do |spec|
  spec.name          = "puppet-runstatus"
  spec.version       = Puppet::Runstatus::VERSION
  spec.authors       = ["TODO: Adam Scarborough"]
  spec.email         = ["scarby@users.noreply.github.com"]
  spec.summary       = %q{TODO: Write a short summary. Required.}
  spec.description   = %q{TODO: Write a longer description. Optional.}
  spec.homepage      = ""
  spec.license       = "gplv3"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency('rdoc')
  spec.add_development_dependency('aruba')
  spec.add_development_dependency('rake')
  spec.add_dependency('methadone', '~> 1.8.0')
  spec.add_development_dependency('rspec', '~> 2.99')
  spec.add_dependency('puppetdb-ruby')
end
