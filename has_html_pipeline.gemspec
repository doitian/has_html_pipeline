# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'has_html_pipeline/version'

Gem::Specification.new do |gem|
  gem.name          = "has_html_pipeline"
  gem.version       = HasHtmlPipeline::VERSION
  gem.authors       = ["Ian Yang"]
  gem.email         = ["me@iany.me"]
  gem.description   = %q{Ease using html-pipeline to convert an object attribute to HTML}
  gem.summary       = %q{Add a "#{attr}_html" method to apply the pre-registered html pipelines on attr getter method.}
  gem.homepage      = "https://github.com/doitian/has_html_pipeline"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
end
