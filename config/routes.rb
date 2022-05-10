Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/products/new", to: "products#new", as: "product_new"
  # get "/products", to: "products#index"
  # post "/products", to: "products#create"
  # get "/products/:id", to: "products#show", as: "product"
  # delete "/products/:id", to: "products#destroy"

  resources :products

  # get '/', to: 'pages#home'
  # root 'pages#home'
  root "products#index"
end
