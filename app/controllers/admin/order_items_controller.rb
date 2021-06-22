class Admin::OrderItemsController < ApplicationController

  def update
    @order_item = Order.find(params[:id])
    @order_item.update(order_item_params)
    redirect_back(fallback_location: root_path)
  end

  private
  def order_item_params
    params.require(:order_item).permit(:product_status)
  end

end
