require 'bootstrap/honoka/rails/engine'

module Bootstrap
  module Honoka
    module Rails
      # サポートしているスタイルシート一覧
      STYLE_SHEETS =
        Dir.glob("#{File.join(File.expand_path('../../..', __dir__), 'assets', 'stylesheets')}/*.scss")
           .map { |f| f.match(%r{.+/_([^/]+?)\.scss})[1].to_sym.freeze }
           .freeze
    end
  end
end
