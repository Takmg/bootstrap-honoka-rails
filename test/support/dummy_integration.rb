# require files
require 'fileutils'

# DummyIntegration
module DummyIntegration
  # Capybara系のヘルパーメソッド

  # Mix-in
  include Capybara::DSL
  include Capybara::Minitest::Assertions

  def setup
    super
    cleanup_cache_files
  end

  def teardown
    super
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end

  private

    def cleanup_cache_files
      FileUtils.rm_rf('test/dummy/tmp/cache', secure: true)
    end

    def screenshot_to_file!(path, log_append = '')
      # save screenshot!
      page.save_screenshot File.join(ROOT_PATH, path)
      ::Minitest::Reporters::DummyReporter.log_strings_append! "Screenshot: Saved to #{path} #{log_append}"
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

      # 幅と高さを取得しブラウザのリサイズを行う。
      width  = Capybara.page.execute_script('return screen.width;')
      height = Capybara.page.execute_script('return Math.max( document.body.scrollHeight , document.body.offsetHeight , document.documentElement.clientHeight , document.documentElement.scrollHeight , document.documentElement.offsetHeight );')
      window = Capybara.current_session.driver.browser.manage.window
      window.resize_to(width, height)

      # スクリーンショットの保存
      screenshot_to_file! "tmp/#{name}.png", "- W:H=#{width}:#{height}"
    end
end
