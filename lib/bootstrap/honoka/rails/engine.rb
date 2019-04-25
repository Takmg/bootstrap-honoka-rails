require_relative 'version'

major_ver = Bootstrap::Honoka::Rails::VERSION.split('.').first.to_i
case major_ver
when 3 then require 'bootstrap-sass'
when 4 then require 'bootstrap'
end

module Bootstrap
  module Honoka
    module Rails
      class Engine < ::Rails::Engine
        isolate_namespace Bootstrap::Honoka::Rails

        # initializer
        initializer 'bootstrap-honoka4.assets' do |app|
          %w[stylesheets].each do |sub|
            app.config.assets.paths << root.join('assets', sub).to_s
          end
        end
      end
    end
  end
end
