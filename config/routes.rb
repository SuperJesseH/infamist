Rails.application.routes.draw do
  devise_for :users
  resources :glist_items
  resources :blist_items
  resources :scoreboards
    root  'scoreboards#index'
  resources :glists
  resources :items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
