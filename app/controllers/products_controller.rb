class ProductsController < ApplicationController
  before_action :authenticate_admin, except: 
[:index, :show]
  def index
    
    @products = Product.all 
    render template: "products/index"
  end

  def create
    
    @product = Product.new(
      name: params[:name],
      price: params[:price],
      description: params[:description],
      supplier_id: params[:supplier_id],
    )
    if @product.save
      Image.create(product_id: @product.id, url: params[:image_url])
      render template: "products/show"
    else
      render json: { errors: @product.errors.full_messages }, status: :unprocessable_entity
    end
 
  end

 
  def show
    @product = Product.find_by(id: params[:id])
    render template: "products/show"
    
  end 

  def update
    @product = Product.find_by(id:params["id"])
    @product.name = params["name"] || @product.name
    @product.price = params["price"] || @product.price
    @product.description = params["description"] || @product.description

     @product.save
      render template: "products/show"
   
  end

  def destroy
     product = Product.find_by(id: params["id"])
     product.destroy
     render json: {message: "Product successfully destory"}
  end

  

end

  