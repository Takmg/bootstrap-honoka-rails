# Bootstrap-Honoka-Rails

[Honoka](https://github.com/windyakin/Honoka) is a Bootstrap theme that can display Japanese beautifully.
bootstrap-honoka-rails can easily install [Honoka](https://github.com/windyakin/Honoka), [Umi](https://ysakasin.github.io/Umi/) , [Nico](https://nico.kubosho.com/) and [Rin](https://rinhoshizo.la/) on Rails.

[Honoka](https://github.com/windyakin/Honoka) は日本語も美しく表示できる Bootstrap テーマです。
bootstrap-honoka-rails は [Honoka](https://github.com/windyakin/Honoka) や [Umi](https://ysakasin.github.io/Umi/) や [Nico](https://nico.kubosho.com/) や [Rin](https://rinhoshizo.la/) を Rails 上に簡単にインストールできます。

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap-honoka-rails' , '~>4.3.1' # or '~> 3.3.7'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap-honoka-rails

[日本語訳]
gemfile にこれ書いておけばいいと思います。

```ruby
gem 'bootstrap-honoka-rails' , '~>4.3.1' # or '~> 3.3.7'
```

## Usage

Add to application.css `*= require _honoka` <br>
For bootstrap ver3 you need `*= _bootstrap-sprockets`.

app/assets/stylesheets/application.css

```css
/*
 *= require _bootstrap-sprockets # Add line ※ v3 only
 *= require _honoka # Add line
 *= require_self
 */
```

and add to application.js <br>
`//= require popper` (bootstrap ver4 later), <br>
`//= require bootstrap-sprockets`

app/assets/javascripts/application.js

```js
//= require jquery2
//= require rails-ujs
//= require activestorage
//= require popper # add line ※ v4 later
//= require bootstrap-sprockets # add line
//= require turbolinks
//= require_tree .
```

If you loaded `bootstrap-sprockets`, you do not need to load `bootstrap.min` .<br>
Because Dropdown features may not work properly.<br>
Please check [here](https://github.com/twbs/bootstrap-sass/issues/714) for more details.<br>
(It has been tested on production environment. The sample app is in the 'test/dummy' directory. )

[日本語訳]
とりあえずインストール後、上記を application.css と application.js に追加すれば OK です。<br>
注意点として `bootstrap-sprockets` を読み込むと思いますが、その場合 `bootstrap.min` は読み込む必要がありません。<br>
何故なら Dropdown が正しく動作しない可能性があります。 <br>
詳細は[こちら](https://github.com/twbs/bootstrap-sass/issues/714)をご確認ください。<br>
※production 環境で動作することを確認済み。 サンプルアプリは 'test/dummy' ディレクトリ内 にあります。

---

Certain [versions](VERSIONS.md) also support Nico , Umi and Rin.

app/assets/stylesheets/application.css

```css
 *= require _umi # Add line
 *= require_self
```

or

```css
 *= require _nico # Add line
 *= require_self
```

or

```css
 *= require _rin # Add line
 *= require_self
```

Please check [VERSIONS.md](VERSIONS.md) for Honoka Nico Umi Rin compatible Ver.

[日本語訳][特定のバージョン](VERSIONS.md)では "Nico"と "Umi" と "Rin" も対応しています。
`_honoka` の代わりに `*= require _nico` と書けば Nico になりますし、 `_umi` と書けば Umi デザインになります。 <br>
Rin も Ver によっては `_rin` と書けば対応出来ます。<br>
Honoka Nico Umi Rin の対応 Ver は[VERSIONS.md](VERSIONS.md)をご確認ください。

## Notice

bootstrap-honoka-rails uses bootstrap or bootstrap-sass internally.

[日本語訳]
bootstrap-honoka-rails は bootstrap 又は bootstrap-sass を内部的に使っています。

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Supported bootstrap themes

#### [Honoka](http://honokak.osaka/)

Source URL ... [https://github.com/windyakin/Honoka](https://github.com/windyakin/Honoka)

> The MIT License (MIT)
>
> Copyright (c) 2015 windyakin

[License View All](https://github.com/windyakin/Honoka/blob/master/LICENSE)

#### [Umi](https://ysakasin.github.io/Umi/)

Source URL ... [https://github.com/ysakasin/Umi](https://github.com/ysakasin/Umi)

> The MIT License (MIT)
>
> Copyright (c) 2015 ysakasin

[License View All](https://github.com/ysakasin/Umi/blob/master/LICENSE)

#### [Nico](https://nico.kubosho.com/)

Source URL ... [https://github.com/kubosho/Nico](https://github.com/kubosho/Nico)

> The MIT License (MIT)
>
> Copyright (c) 2015 windyakin, kubosho

[License View All](https://github.com/kubosho/Nico/blob/master/LICENSE)

#### [Rin](https://rinhoshizo.la/)

Source URL ... [https://github.com/raryosu/Rin](https://github.com/raryosu/Rin)

> The MIT License (MIT)
>
> Copyright (c) 2016 Hagihara Ryosuke

[License View All](https://github.com/raryosu/Rin/blob/master/LICENSE)
