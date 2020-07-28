# Bootstrap-Honoka-Rails

[engilish](README.md)/[japanese](README_ja.md)

[Honoka](https://github.com/windyakin/Honoka) は日本語も美しく表示できる Bootstrap テーマです。
bootstrap-honoka-rails は [Honoka](https://github.com/windyakin/Honoka) や [Umi](https://ysakasin.github.io/Umi/) や [Nico](https://nico.kubosho.com/) や [Rin](https://rinhoshizo.la/) を Rails 上に簡単にインストールできます。

## Installation

gemfile に下記記載します。

```ruby
gem 'bootstrap-honoka-rails' , '~>4.3.1' # or '~> 3.3.7'
```

そして下記コマンドでインストール :

    $ bundle

又は gemに直接インストールします:

    $ gem install bootstrap-honoka-rails

## Usage

application.cssに `*= require _honoka` を追加します。<br> 
bootstrap3の場合は `*= _bootstrap-sprockets`. も追加します。

app/assets/stylesheets/application.css

```css
/*
 *= require _bootstrap-sprockets # 追加行 ※ v3 のみ
 *= require _honoka # 追加行
 *= require_self
 */
```


次にapplication.jsに下記を追加しましょう。 <br>

```js
`//= require popper` // * bootstrap ver4 以降
`//= require bootstrap-sprockets`
```

app/assets/javascripts/application.js

```js
//= require jquery2
//= require rails-ujs
//= require activestorage
//= require popper # add line ※ ver4 以降
//= require bootstrap-sprockets # 追加行
//= require turbolinks
//= require_tree .
```

インストール後、上記を application.css と application.js に追加すれば OK です。<br>
注意点として `bootstrap-sprockets` を読み込むと思いますが、その場合 `bootstrap.min` は読み込む必要がありません。<br>
何故なら Dropdown が正しく動作しない可能性がある為です。 <br>
詳細は[こちら](https://github.com/twbs/bootstrap-sass/issues/714)をご確認ください。<br>
※production 環境で動作することを確認済み。 サンプルアプリは 'test/dummy' ディレクトリ内 にあります。

---

[特定のバージョン](VERSIONS.md)では "Nico"と "Umi" と "Rin" も対応しています。

app/assets/stylesheets/application.css

```css
 *= require _umi # 追加行
 *= require_self
```

or

```css
 *= require _nico # 追加行
 *= require_self
```

or

```css
 *= require _rin # 追加行
 *= require_self
```

Honoka Nico Umi Rin の対応 Ver は[VERSIONS.md](VERSIONS.md)をご確認ください。

## Notice

bootstrap-honoka-rails は bootstrap 又は bootstrap-sass を内部的に使っています。

## License

本gemは[MITライセンス]((https://opensource.org/licenses/MIT))の条件の下でオープンソースとして利用可能です。

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
