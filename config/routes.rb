Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/get_product", controller: "products", action: "product" 
  get "/product_one", controller: "products", action: "product_one"
  get "/products_all", controller: "products", action: "products_all"
  get "/one_product/:id" => "products#one_product"
end
