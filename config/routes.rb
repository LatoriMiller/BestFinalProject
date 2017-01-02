Rails.application.routes.draw do
  resources :comments
  resources :ads
  resources :categories

  root "ads#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
