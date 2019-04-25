require 'test_helper'

class Bootstrap::Honoka::Rails::Test < ActionDispatch::IntegrationTest
  %w[honoka umi nico].each do |name|
    test "access #{name} test" do
      get "/pages/#{name}"
      assert_response :success
    end
  end
end
