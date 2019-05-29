Rails.application.routes.draw do
  ::Bootstrap::Honoka::Rails.stylesheets.each do |s|
    get "pages/#{s}"
  end
end
