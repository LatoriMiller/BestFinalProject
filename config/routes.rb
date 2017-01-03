Rails.application.routes.draw do

  get 'categories/index'

  resources :ads
  devise_for :users
  resources :users
  resources :categories
  root "ads#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
