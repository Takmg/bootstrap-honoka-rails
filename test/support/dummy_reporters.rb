require 'minitest/reporters'

module Minitest
  module Reporters
    class DummyReporter < DefaultReporter

      # 配列データ
      @@log_strings = []

      # 特異メソッド
      class << self 
        def log_strings ; @@log_strings; end
        def log_strings_append!( rhs )
           @@log_strings << rhs if !rhs.nil?
        end
      end

      # 独自カラー
      def cyan(string)
        color? ? ANSI::Code.cyan(string) : string
      end

      def magenta(string)
        color? ? ANSI::Code.magenta(string) : string
      end

      # レポートを行う
      def on_report 
        super 
        return if self.class.log_strings.empty?
        puts 
        puts cyan( '------------------------------------------------------------' )
        puts magenta( '[TEST INFO]' )
        self.class.log_strings.each do |data| 
          puts yellow( data )
        end
        puts cyan( '------------------------------------------------------------' )
        puts
      end
    end

    # セットアップ
    reporter_options = { color: true }
    ::Minitest::Reporters.use! [DummyReporter.new(reporter_options)]
  end
end
