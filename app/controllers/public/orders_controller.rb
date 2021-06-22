class Public::OrdersController < ApplicationController

  before_action :authenticate_customer!

	def new
		@order = Order.new
		@addresses = current_customer.addresses
	end

	def create
		@order=Order.new(order_params)
		@order.customer_id = current_customer.id
		render "thanks"
	end

	def thanks
		@cart_items=current_customer.cart_items
	end

	def complete
		order.save
	end

#会員の注文履歴一覧表示(うえ)
	def index
		@orders = current_customer.orders
	end

	def show
		@order = Order.find(params[:id])
    @order_items = @order.order_items
	end

private

def order_params
	params.require(:order).permit(:pay_method, :zip_code, :address, :name)
end

end
