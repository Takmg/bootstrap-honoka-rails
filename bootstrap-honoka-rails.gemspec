$LOAD_PATH.push File.expand_path('lib', __dir__)

# Maintain your gem's version:
require 'bootstrap/honoka/rails/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'bootstrap-honoka-rails'
  spec.version     = Bootstrap::Honoka::Rails::VERSION
  spec.authors     = ['Takmg']
  spec.email       = ['Takmg@example.com']
  spec.homepage    = 'https://github.com/Takmg/bootstrap-honoka-rails'
  spec.summary     = 'Gem to handle -Bootstrap honoka- easily'
  spec.description = 'Gem to handle -Bootstrap honoka- easily'
  spec.license     = 'MIT'

  spec.files = Dir['{assets,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']
  spec.test_files = `git ls-files -- test/*`.split("\n")

  dependency_ver = Bootstrap::Honoka::Rails::VERSION.split('.')[0..2].join('.')
  case Bootstrap::Honoka::Rails.major_ver
  when 4 then spec.add_dependency 'bootstrap', "~>#{dependency_ver}"
  when 3 then spec.add_dependency 'bootstrap-sass', "~>#{dependency_ver}"
  end

  # Testing dependencies
  spec.add_development_dependency 'jquery-rails' , '>= 4.3.3'
  spec.add_development_dependency 'minitest', '~> 5.11.3'
  spec.add_development_dependency 'minitest-reporters', '~> 1.3.6'
  spec.add_development_dependency 'sprockets-rails' 
end
