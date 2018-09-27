Rails.application.routes.draw do
  get 'words/index'

  devise_for :users, controllers: { :omniauth_callbacks => "omniauth_callbacks" }
  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/about'

  resources :users
  resources :words
  resources :ideas

end
