module Bootstrap
  module Honoka
    module Rails
      VERSION = '4.0.0'.freeze
      def self.major_ver
        VERSION.split('.').first.to_i
      end
    end
  end
end
