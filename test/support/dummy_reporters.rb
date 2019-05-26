require 'minitest/reporters'

module Minitest
  module Reporters
    class DummyReporter < DefaultReporter
      # 最後にログ出力する際の文字列配列(下記注意点)
      #
      # 1)特異メソッド内から下記変数を参照する為、クラス変数にするべきと思われるかもしれないが、
      #   後にDummyReportersから継承される可能性を考慮すると、
      #   クラスインスタンス変数を使用する方が良いとの事。
      #   Effective Ruby 項目15
      # 2)クラスインスタンス変数をクラスメソッドで使用する点から
      #   SingletonをIncludeする事も考慮したが、
      #   その場合
      #   ・Instanceメソッドからinitializeに引数が渡せない。
      #   ・どうしても親クラスのinitializeにデータを渡す際、
      #       def set_options( options = {} ); initialize(options); end;
      #     というようなRubyとして正か判断できないややこしい処理となりそうだった。
      #     (一般的に考えてコンストラクタを無理やり呼び出す違和感のあるやり方)
      #   という観点からSingletonは見送りとした。
      @log_strings = []

      # 特異メソッド
      class << self
        attr_reader :log_strings

        def log_strings_append!(rhs)
          @log_strings << rhs unless rhs.nil?
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
        puts cyan('------------------------------------------------------------')
        puts magenta('[TEST INFO]')
        self.class.log_strings.each do |data|
          puts yellow(data)
        end
        puts cyan('------------------------------------------------------------')
        puts
      end
    end

    # セットアップ
    reporter_options = { color: true }
    ::Minitest::Reporters.use! [DummyReporter.new(reporter_options)]
  end
end
