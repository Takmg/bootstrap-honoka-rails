# require files
require 'test_helper'
require 'fileutils'

# DummyRailsIntegration
module DummyIntegration

  # Mix-in
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def setup
    super
    cleanup_dummy_files
  end

  def teardown
    super
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  private

    def cleanup_dummy_files
      FileUtils.rm_rf('test/dummy/tmp/cache', secure: true)
    end

    def screenshot_to_file!( path )
      # save screenshot!
      page.save_screenshot File.join(ROOT_PATH, path)
      STDERR.puts "Screenshot: saved to #{path}"
    end

    # screenshotを撮る
    def screenshot!
      # パスを設定してファイルを保存する。
      path = "tmp/#{name}.png"
      screenshot_to_file! path
    end

    # 画面リサイズ後にscreenshotを撮る
    def take_full_page_screenshot!
      # https://testingrepository.com/full-page-screenshot-with-selenium/
      # https://github.com/teampoltergeist/poltergeist/issues/165
      # https://sqa.stackexchange.com/questions/9007/how-to-handle-time-out-receiving-message-from-the-renderer-in-chrome-driver

      # 幅と高さとWindowの取得
      width  = Capybara.page.execute_script( 'return screen.width;' )
      height = Capybara.page.execute_script( 'return Math.max( document.body.scrollHeight , document.body.offsetHeight , document.documentElement.clientHeight , document.documentElement.scrollHeight , document.documentElement.offsetHeight );' )
      window = Capybara.current_session.driver.browser.manage.window
      window.resize_to( width , height )

      # スクリーンショットの保存
      STDERR.puts "Screenshot: prepare resize #{width} : #{height}"
      screenshot_to_file! "tmp/#{name}.png"
    end
end
