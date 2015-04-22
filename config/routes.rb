Rails.application.routes.draw do
  devise_for :users, ActiveAdmin::Devise.config
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  # Website index page
  root to: 'products#index'

  # Products routes
  get 'products' => 'products#index'
  get 'products/:id' => 'products#show', as: 'product', id: /\d+/

  # Brands routes
  get 'brands' => 'brands#index'
  get 'brands/:id' => 'brands#show', as: 'brand', id: /\d+/
end
