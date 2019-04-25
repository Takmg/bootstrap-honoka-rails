require_relative 'version'

case Bootstrap::Honoka::Rails.major_ver
when 4 then require 'bootstrap'
when 3 then require 'bootstrap-sass'
end

module Bootstrap
  module Honoka
    module Rails
      class Engine < ::Rails::Engine
        isolate_namespace Bootstrap::Honoka::Rails

        # initializer
        initializer 'bootstrap-honoka-rails.assets' do |app|
          %w[stylesheets].each do |sub|
            app.config.assets.paths << root.join('assets', sub).to_s
          end
        end
      end
    end
  end
end
