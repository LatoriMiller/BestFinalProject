Rails.application.routes.draw do

  get 'all' => 'storefront#all_items'
  # come bakck here
  get 'categorical' => 'storefront#items_by_category'

  get 'price' => 'storefront#items_by_price'

  get 'categories/index'

  resources :ads
  devise_for :users
  resources :users
  resources :categories
# was formerly ad#index
  root "storefront#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
