Rails.application.routes.draw do
  get 'site/index'
  get 'site/order'
  get 'site/menu'
  
  root 'site#index'
  resources :orders
  resources :admins
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
