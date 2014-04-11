Store::Application.routes.draw do
  resources :users
  resources :products
  root to: 'products#index'
end
