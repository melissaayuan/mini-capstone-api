class ProductsController < ApplicationController

  def index
    products = Product.all 
    render json: products.as_json
  end

  def create
    product = Product.new(name: "watermeloon", price: "2", image_url: "www.watermelon.com", description: "pink")
    product.save
    render json: product.as_json
  end

  def show
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end 
  
end

  