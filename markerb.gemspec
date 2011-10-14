# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'markerb/version'

Gem::Specification.new do |s|
  s.name        = 'markerb-pure'
  s.version     = Markerb::VERSION.dup
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['José Valim', 'Michael Kessler']
  s.email       = ['contact@plataformatec.com.br', 'michi@netzpiraten.ch']
  s.summary     = 'Multipart templates made easy with pure Markdown and ERb'
  s.homepage    = 'http://github.com/netzpirat/markerb-pure'
  s.description = 'Multipart templates made easy with pure Markdown and ERb'

  s.files        = Dir.glob('{lib}/**/*') + %w[MIT-LICENSE README.md]
  s.require_path = 'lib'

  s.add_dependency 'kramdown'
end
