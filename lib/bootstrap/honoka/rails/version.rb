module Bootstrap
  module Honoka
    module Rails
      VERSION = '4.4.1.0'.freeze
      def self.major_ver
        VERSION.split('.').first.to_i
      end

      def self.dependency_ver
        VERSION.split('.')[0..2].join('.')
      end
    end
  end
end
