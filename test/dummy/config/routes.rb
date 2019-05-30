Rails.application.routes.draw do
  ::Bootstrap::Honoka::Rails::STYLE_SHEETS.each do |s|
    get "pages/#{s}"
  end
end
