
lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jocelyn/version'

Gem::Specification.new do |spec|
  spec.name          = 'jocelyn'
  spec.version       = Jocelyn::VERSION
  spec.authors       = ['Matt Powell']
  spec.email         = ['fauxparse@gmail.com']

  spec.summary       = 'Tools to slightly randomise a list.'
  spec.homepage      = 'http://github.com/fauxparse/jocelyn'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.53.0'
end
