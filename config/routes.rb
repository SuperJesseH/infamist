Rails.application.routes.draw do
  devise_for :users
  resources :list_items
  resources :scoreboards
    root  'scoreboards#index'
  resources :lists
  resources :items
  get 'items/search', to: 'items#search'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
