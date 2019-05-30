require 'test_helper'

class Bootstrap::Honoka::Rails::Test < ActionDispatch::IntegrationTest
  # Mix-in
  include DummyIntegration

  # constant data variables
  TEST_PAGES = ::Bootstrap::Honoka::Rails::STYLE_SHEETS
  TEST_PATHS = TEST_PAGES.map { |el| "/pages/#{el}".freeze }.freeze
  TEST_DATAS = TEST_PAGES.zip(TEST_PATHS).map(&:freeze).freeze

  # スタイルシートの個数確認
  test 'stylesheet count' do
    # スタイルシート数の確認
    assert !TEST_PAGES.empty?, 'エラー：サポートされているスタイルシートが1つも存在していません。'
  end

  # access test
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

  # compile test
  TEST_PAGES.each do |page|
    test "compile #{page}" do
      # Sassのコンパイルを行う
      SassC::Engine.new("@import '_#{page}';",
                        load_paths: app.config.assets.paths).render

      # 例外が発生せずここまで来れば assert成功
      assert true
    end
  end
end
