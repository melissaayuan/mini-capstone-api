class ProductsController < ApplicationController
end

class Product
  attr_accessor :name, :price, :image_url, :description

  def initialize(options)
  @name = options[:name]
  @price = options[:price]
  @image_url = options[:image_url]
  @description = options[:description]
  end

  def product_one
    product = Product.first
    render json: product.as_json
  end
end