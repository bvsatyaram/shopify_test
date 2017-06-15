Rails.application.routes.draw do
  get 'shopify_products/create'

  root :to => 'home#index'

  resources :product_groups, only: [:index, :show]
  resources :shopify_products, only: [:create]

  mount ShopifyApp::Engine, at: '/'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
