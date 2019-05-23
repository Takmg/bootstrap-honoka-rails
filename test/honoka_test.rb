require 'test_helper'

class Bootstrap::Honoka::Rails::Test < ActionDispatch::IntegrationTest
  # Mix-in
  include DummyIntegration

  # constant variables
  TEST_PAGES = %w[honoka umi nico].map(&:freeze).freeze
  TEST_PATHS = TEST_PAGES.map { |el| "/pages/#{el}".freeze }.freeze
  TEST_DATAS = TEST_PAGES.zip(TEST_PATHS).map(&:freeze).freeze

  # アクセステスト
  TEST_DATAS.each do |page, path|
    test "access #{page}" do
      begin
        # ページのアクセステスト
        visit path

        # ステータスコードの取得を行う
        # https://stackoverflow.com/questions/7908907/how-to-test-the-response-code-with-capybara-selenium
        response_code = Capybara.page.first('html')[:code].to_i
        assert response_code == 200, 'エラー：正しくページを取得できませんでした。'
      ensure
        # エラーであっても表示ページのscreenshotは撮る。
        take_full_page_screenshot!
      end
    end
  end
end
