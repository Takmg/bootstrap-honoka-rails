require 'minitest/autorun'
require 'minitest/reporters'

# Configure Rails Environment
ENV['RAILS_ENV'] = 'test'

require_relative '../test/dummy/config/environment'
require 'rails/test_help'
