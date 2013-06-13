# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-templates'
  s.version           = '1.0'
  s.authors           = ["LiYang"]
  s.email             = ["bbtfrr@gmail.com"]
  s.description       = 'Ruby on Rails Templates extension for Refinery CMS'
  s.date              = '2013-06-06'
  s.summary           = 'Templates extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.10'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.10'
end
