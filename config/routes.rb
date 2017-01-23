Rails.application.routes.draw do
  get 'site/index'
  get 'site/menu'

  get 'orders/starters'
  get 'orders/soups'
  get 'orders/courses'
  get 'orders/desserts'
  get 'orders/beverages'


  root 'site#index'
  resources :orders
  resources :admins
  resources :foods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
