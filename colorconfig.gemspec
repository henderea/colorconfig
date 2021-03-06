# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
#noinspection RubyResolve
require 'colorconfig/version'

Gem::Specification.new do |spec|
  spec.name        = 'colorconfig'
  spec.version     = Colorconfig::VERSION
  spec.authors     = ['Eric Henderson']
  spec.email       = ['henderea@gmail.com']
  spec.summary     = %q{color configuration}
  spec.description = %q{create/edit a color configuration file for `mvn2` and `mvr`}
  spec.homepage    = 'https://github.com/henderea/colorconfig'
  spec.license     = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 12.3'

  spec.add_dependency 'everyday-cli-utils', '~> 1.8', '>= 1.8.7.2'
  spec.add_dependency 'everyday-plugins', '~> 1.2', '>= 1.2.2'
end
