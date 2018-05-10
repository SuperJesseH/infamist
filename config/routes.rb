Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resources :list_items
  resources :scoreboards
    root  'scoreboards#index'
  resources :lists
  get 'items/search', to: 'items#search', as: 'search_item'
  resources :items
  get 'users/search', to: 'users#search', as: 'search_user'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
