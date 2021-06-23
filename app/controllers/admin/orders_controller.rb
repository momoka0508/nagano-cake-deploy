class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def current_user_order
    @orders = Order.where(customer_id: params[:id])
    render action: :index
  end

  def show
    @order = Order.find(params[:id])
    @order_items = @order.order_items
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def order_params
    params.require(:order).permit(:order_status)
  end

end
