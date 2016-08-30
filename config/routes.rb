Rails.application.routes.draw do
  
  #Start Page
  root 'products#index'

  #User Page
  get 'users' => 'users#index'
  get 'users/new' => 'users#new'
  post 'users' => 'users#create'
  delete 'users/products/destroy/:product_id' => 'products#destroy', as: :products_destroy
  get 'users/products' => 'users#index', as: :users_products

  #Product Page
  get 'products' => 'products#index'
  get 'products/new' => 'products#new'
  post 'products' => 'products#create' 
  get 'products/show/:product_id' => 'products#show', as: :products_show
  
  #Login Page
  get 'login' => 'sessions#new', as: :sessions_login
  delete 'logout' => 'sessions#destroy', as: :sessions_logout
  post 'login' => 'sessions#create'

end
