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

      # レポートを行う
      def on_report 
        super 
        puts 
        puts green( "-----------------------------------------" )
        self.class.log_strings.each do |data| 
          puts yellow( data )
        end
        puts green( "-----------------------------------------" )
        puts
      end
    end

    # セットアップ
    reporter_options = { color: true }
    ::Minitest::Reporters.use! [DummyReporter.new(reporter_options)]
  end
end
