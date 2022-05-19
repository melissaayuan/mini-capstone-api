class OrdersController < ApplicationController
  before_action :authenticate_user

  def index

    @orders = Order.all
    orders = Order.where(user_id: current_user.id)
    render template: "orders/index"

  end
  
  def show
    @order = Order.find_by(id: params[:id], user_id: current_user.id)
    render template: "orders/show"
  end

  
  def create
    carted_products = CartedProduct.where(user_id: current_user.id, status: "carted")
    calculated_subtotal = 0
    calculated_tax = 0
    calculated_total = 0
    carted_products.each do |carted_product|
      calculated_subtotal += carted_product.product.price * carted_product.quantity
      calculated_tax += carted_product.product.tax * carted_product.quantity
    end
    
    
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id,
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )

    order.save 

    carted_products.update_all(status: "purchased", order_id: order.id)
    render json: order.as_json

  end

end
