Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/get_product", controller: "products_controller", action: "product" 
  get "/product_one", controller: "products_controller", action: "product_one"
end
