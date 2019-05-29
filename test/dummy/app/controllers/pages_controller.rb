class PagesController < ApplicationController
  # action定義
  ::Bootstrap::Honoka::Rails.stylesheets.each do |s|
    define_method(s) {}
  end
end
