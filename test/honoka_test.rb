require 'test_helper'

class Bootstrap::Honoka::Rails::Test < ActionDispatch::IntegrationTest

  # Mix-in
  include DummyIntegration

  # constant variables
  TEST_PAGES = %w[honoka umi nico rin]
  TEST_PATHS = TEST_PAGES.map { |el| "/pages/#{el}" }
  TEST_DATAS = TEST_PAGES.zip( TEST_PATHS )

  # アクセステスト
  TEST_DATAS.each do |page,path|
    test "access #{page}" do
      # ページの取得確認
      get path
      assert_response :success

      # screenshot!
      visit path
      take_full_page_screenshot!
    end
  end
end
