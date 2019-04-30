# Bootstrap-Honoka-Rails

[Honoka](https://github.com/windyakin/Honoka) is a Bootstrap theme that can display Japanese beautifully.
bootstrap-honoka-rails can easily install [Honoka](https://github.com/windyakin/Honoka),[Umi](https://ysakasin.github.io/Umi/) , [Nico](https://nico.kubosho.com/) and [Rin](https://rinhoshizo.la/) on Rails.

[Honoka](https://github.com/windyakin/Honoka) は日本語も美しく表示できる Bootstrap テーマです。
bootstrap-honoka-rails は [Honoka](https://github.com/windyakin/Honoka) や [Umi](https://ysakasin.github.io/Umi/) や [Nico](https://nico.kubosho.com/) や [Rin](https://rinhoshizo.la/) を Rails 上に簡単にインストールできます。

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

```css app/assets/stylesheets/application.css
 *= require _honoka # Add line
 *= require_self
```

and add to application.js [ //= require popper, //= require bootstrap-sprockets , //= require bootstrap.min]

```js app/assets/javascripts/application.js
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require popper # add line ※ v4 later
//= require bootstrap-sprockets # add line
//= require bootstrap.min # add line
//= require_tree .
```

[日本語訳]
とりあえずインストール後、上記を application.css と application.js に追加すれば OK です。

---

Certain [versions](VERSIONS.md) also support Nico , Umi and Rin.

```css app/assets/stylesheets/application.css
 *= require _umi # Add line
 *= require_self
```

or

```css app/assets/stylesheets/application.css
 *= require _nico # Add line
 *= require_self
```

or

```css app/assets/stylesheets/application.css
 *= require _rin # Add line
 *= require_self
```

Please check [VERSIONS.md](VERSIONS.md) for Honoka Nico Umi Rin compatible Ver.

[日本語訳][特定のバージョン](VERSIONS.md)では "Nico"と "Umi" と "Rin" も対応しています。
`_honoka` の代わりに `*= require _nico` と書けば Nico になりますし、 `_umi` と書けば Umi デザインになります。
Rin も Ver によっては `_rin` と書けば対応出来ます。
Honoka Nico Umi Rin の対応 Ver は[VERSIONS.md](VERSIONS.md)をご確認ください。

## Notice

bootstrap-honoka-rails uses bootstrap or bootstrap-sass internally.

[日本語訳]
bootstrap-honoka-rails は bootstrap 又は bootstrap-sass を内部的に使っています。

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Use Bootstrap Theme

#### [Honoka](https://github.com/windyakin/Honoka)

Source Url ... [https://github.com/windyakin/Honoka](https://github.com/windyakin/Honoka)

> The MIT License (MIT)
>
> Copyright (c) 2015 windyakin

[License View All](https://github.com/windyakin/Honoka/blob/master/LICENSE)

#### [Umi](https://ysakasin.github.io/Umi/)

Source Url ... [https://github.com/ysakasin/Umi](https://github.com/ysakasin/Umi)

> The MIT License (MIT)
>
> Copyright (c) 2015 ysakasin

[License View All](https://github.com/ysakasin/Umi/blob/master/LICENSE)

#### [Nico](https://nico.kubosho.com/)

Source Url ... [https://github.com/kubosho/Nico](https://github.com/kubosho/Nico)

> The MIT License (MIT)
>
> Copyright (c) 2015 windyakin, kubosho

[License View All](https://github.com/kubosho/Nico/blob/master/LICENSE)

#### [Rin](https://rinhoshizo.la/)

Source Url ... [https://github.com/raryosu/Rin](https://github.com/raryosu/Rin)

> The MIT License (MIT)
>
> Copyright (c) 2016 Hagihara Ryosuke

[License View All](https://github.com/raryosu/Rin/blob/master/LICENSE)
