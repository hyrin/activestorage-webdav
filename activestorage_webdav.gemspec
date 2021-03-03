
$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__)).uniq!
require 'activestorage_webdav/version'

Gem::Specification.new do |spec|
  spec.name          = 'activestorage_webdav'
  spec.version       = ActivestorageWebdav::VERSION
  spec.authors       = ['Ann Razumova']
  spec.email         = ['hyrintalion@gmail.com']

  spec.homepage      = 'https://github.com/hyrintalion/activestorage-webdav'
  spec.summary       = 'ActiveStorage adapter for WebDAV.'
  spec.description   = 'ActiveStorage adapter for WebDAV.'
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
  spec.add_development_dependency 'webmock', '~> 2.1'
  spec.add_development_dependency 'rack_dav'

  spec.add_runtime_dependency 'activestorage', '>= 5.2'
  spec.add_runtime_dependency 'net_dav', '~> 0.5.1'
end
