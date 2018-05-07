Rails.application.routes.draw do
  resources :glist_items
  resources :blist_items
  resources :blists
  resources :glists
  resources :items
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
