Rails.application.routes.draw do
  get 'site/index'
  root 'site#index'
  resources :orders
  resources :admins
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
