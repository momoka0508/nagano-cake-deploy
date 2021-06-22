class Public::OrdersController < ApplicationController

  before_action :authenticate_customer!

	def new
		@order = Order.new
		@addresses = current_customer.addresses
	end

	def thanks
		@order=Order.new(order_params)
		@order.customer_id = current_customer.id
		@cart_items=current_customer.cart_items
	end

	def create_order
		@order = Order.new(order_params)
		@order.customer_id = current_customer.id
		@order.save
    #saveでOrderモデルにorder_idが入る
    
		#注文詳細内容の保存
		current_customer.cart_items.each do |cart|
			@order_detail = OrderDetail.new
			@order_detail.order_id = @order.id
			@order_detail.item_name = cart.item.name
			@order_detail.item_price = cart.item.price
			@order_detail.quantity = cart.quantity
			@order_detail.save
		end

		redirect_to orders_complete_path
	end

#会員の注文履歴一覧表示(うえ)
	def index
		@orders = current_customer.orders
	end

	def show
		@order = Order.find(params[:id])
    @order_details = @order.order_detailsss
	end

private

def order_params
	params.require(:order).permit(:customer_id, :pay_method, :total_money, :zip_code, :address, :name)
end

end
