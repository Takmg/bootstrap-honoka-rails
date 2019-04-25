$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'bootstrap/honoka4/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'bootstrap-honoka4'
  spec.version     = Bootstrap::Honoka4::VERSION
  spec.authors     = ['Takmg']
  spec.email       = ['Takmg@example.com']
  spec.homepage    = 'https://github.com/Takmg/bootstrap-honoka4'
  spec.summary     = 'Gem to handle -Bootstrap honoka- easily'
  spec.description = 'Gem to handle -Bootstrap honoka- easily'
  spec.license     = 'MIT'

  spec.files = Dir['{assets,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'bootstrap', "~>#{spec.version}"
end
