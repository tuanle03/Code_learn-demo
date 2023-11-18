Rails.application.routes.draw do
  resources :users

  mount API::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
end
