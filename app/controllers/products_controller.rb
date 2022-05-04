class ProductsController < ApplicationController

  def product_one
    product = Product.first
    render json: product.as_json
  end

  def products_all
    products = Product.all
    render json: products.as_json
  end

  def one_product
    product = Product.find_by(id: params["id"])
    render json: product.as_json
  end
  
end

  