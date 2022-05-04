Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/product_one" => "products#product_one"
  get "/products_all" => "products#products_all"
  get "/one_product/:id" => "products#one_product"
end
