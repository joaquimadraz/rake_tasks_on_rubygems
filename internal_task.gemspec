# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'internal_task/version'

Gem::Specification.new do |spec|
  spec.name          = 'internal_task'
  spec.version       = InternalTask::VERSION
  spec.authors       = ['joaquimadraz']
  spec.email         = ['joaquim.adraz@gmail.com']

  spec.summary       = %q{InternalTask}
  spec.description   = %q{Expose a task from a gem}
  spec.homepage      = 'https://github.com/joaquimadraz'

  spec.files         = `git ls-files -z`.split('\x0').reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
end
