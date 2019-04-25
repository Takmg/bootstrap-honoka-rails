require 'bootstrap'

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
