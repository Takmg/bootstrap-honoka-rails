# Bootstrap-Honoka-Rails

[honoka](https://github.com/windyakin/Honoka) is a Bootstrap theme that can display Japanese beautifully.
bootstrap-honoka-rails can easily install honoka on rails.

[honoka](https://github.com/windyakin/Honoka) は日本語も美しく表示できる Bootstrap テーマです。
bootstrap-honoka-rails は honoka を rails 上に簡単にインストールできます。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap-honoka-rails' , '~>4.3.1'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-honoka-rails

[日本語訳]
gemfile にこれ書いておけばいいと思います。

```ruby
gem 'bootstrap-honoka-rails' , '~>4.3.1'
```

## Usage

Add to application.css [ *= require _honoka ]

```app/assets/stylesheets/application.css
 *= require _honoka # Add line
 *= require_self
```

[日本語訳]
とりあえずインストール後、上記を application.css に追加すれば OK です。

## Notice

bootstrap-honoka-rails uses bootstrap internally.

[日本語訳]
bootstrap-honoka-rails は bootstrap を内部的に使っています。

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
