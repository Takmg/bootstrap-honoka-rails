require 'test_helper'

class Bootstrap::Honoka::Rails::Test < ActionDispatch::IntegrationTest
  %w(honoka umi nico).each { |name|
    test "access #{name} test" do
      get "page/#{name}"
      assert_response :success
    end
  }
end
