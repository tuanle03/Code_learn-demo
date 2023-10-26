Rails.application.routes.draw do
  resources :users

  mount Api::Base, at: "/"
  mount GrapeSwaggerRails::Engine, at: "/documentation"
end
