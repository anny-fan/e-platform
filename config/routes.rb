Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/products/new', to: 'products#new', as: "new_products"
  post '/products', to: 'products#create'

  # get '/', to: 'pages#home'
  root 'pages#home'
end
