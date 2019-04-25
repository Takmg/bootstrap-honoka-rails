require 'test_helper'

class Bootstrap::Honoka4::Test < ActionDispatch::IntegrationTest
  test 'access test' do
    get root_path
    assert_response :success
  end
end
