# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'snippetize/version'

Gem::Specification.new do |gem|
  gem.name          = "snippetize"
  gem.version       = Snippetize::VERSION
  gem.authors       = ["Mathieu Gagné", "Alexandre Croteau-Pothier"]
  gem.email         = ["mathieu@motioneleven.com"]
  gem.description   = %q{Ruby gem allowing you to include re-usable code and partials in html or plain text fields.}
  gem.summary       = %q{Ruby gem allowing you to include re-usable code and partials in html or plain text fields. Stay dry and reuse your partials using shortcode. Use it for including forms, videos, maps or simply preformated html snippets.}
  gem.homepage      = "https://github.com/motioneleven/snippetize"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

	gem.add_development_dependency 'rspec'
	gem.add_development_dependency 'active_support'
	gem.add_development_dependency 'rack'
	gem.add_development_dependency 'actionpack'
end
