Rails.application.routes.draw do
  resources :abouts
  root 'home#index'
  resources :companies
  resources :products
  resources :customers
  resources :orders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
