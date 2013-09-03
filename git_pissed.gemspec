# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'git_pissed/version'

Gem::Specification.new do |spec|
  spec.name          = 'git_pissed'
  spec.version       = GitPissed::VERSION
  spec.authors       = ['Chris Hunt']
  spec.email         = ['c@chrishunt.co']
  spec.description   = %q{Gitting pissed about your code}
  spec.summary       = %q{Gitting pissed about your code}
  spec.homepage      = 'http://chrishunt.co/git-pissed'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'ruby-progressbar'

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end