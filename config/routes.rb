Rails.application.routes.draw do
  devise_for
  
  get 'user/index'
  get 'user/:id', to: 'user#show', as: 'users'
  get 'purchases/:product_id/create', to: 'purchases#create', as: 'create_purchases'
  devise_for :users
  resources :products
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
