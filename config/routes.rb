Rails.application.routes.draw do
  resources :glist_items
  resources :blist_items
  resources :blists
    root  'blists#index'
  resources :glists
  resources :items
  get 'items/search', to: 'items#search'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
