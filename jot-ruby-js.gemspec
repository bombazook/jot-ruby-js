lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jot/ruby/js/version'

Gem::Specification.new do |spec|
  spec.name          = 'jot-ruby-js'
  spec.version       = Jot::Ruby::Js::VERSION
  spec.authors       = ['Kostrov Alexander']
  spec.email         = ['bombazook@gmail.com']

  spec.summary       = 'Javascript JOT impl wrapper'
  spec.description   = 'Wrapper for original JOT impl, compatible with jot-ruby gem'
  spec.homepage      = 'https://github.com/bombazook/jot-ruby-js'
  spec.license       = 'GPL-3.0-only'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.require_paths = ['lib']
  spec.add_dependency 'execjs', '~> 2.7.0'
  spec.add_dependency 'jot-ruby', '~> 0.1.3'
  spec.add_dependency 'multi_json', '~> 1.13'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
