class PagesController < ApplicationController
  # action定義
  ::Bootstrap::Honoka::Rails::STYLE_SHEETS.each do |s|
    define_method(s) {}
  end
end
