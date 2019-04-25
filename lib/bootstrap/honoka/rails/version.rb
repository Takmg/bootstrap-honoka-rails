module Bootstrap
  module Honoka
    module Rails
      VERSION = '4.3.1'.freeze
      def self.major_ver
        VERSION.split('.').first.to_i
      end
    end
  end
end
