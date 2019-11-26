Rails.application.routes.draw do

  # devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_for :users
  root to: 'sales#index' 

  resource :mypage

  get 'item_sales/create'
  get 'item_sales/destroy'
  get 'stock_polishes/create'
  get 'stock_polishes/destroy'
  # get "/" => "home#top"


  resources :sales
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :farmers
  # resources :stocks
  resources :stocks do
    resource :stock_polishes, only: [:create, :destroy]
  end

  resources :polishes
  # resources :items
  resources :items do
    resource :item_sales, only: [:create, :destroy]
  end
  resources :cliants

end
