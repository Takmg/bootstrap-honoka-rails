require 'bootstrap/honoka/rails/engine'

module Bootstrap
  module Honoka
    module Rails
      class << self
        def stylesheets
          Dir.glob("#{File.join(File.expand_path('../../..', __dir__), 'assets', 'stylesheets')}/*.scss")
             .map { |f| f.match(%r{.+/_([^/]+?)\.scss})[1] }
        end
      end
    end
  end
end
