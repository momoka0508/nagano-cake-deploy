class Public::OrdersController < ApplicationController

	def new
		@order=Order.new
	end

	def create
		order=Order.new(order_params)
		order.save
		redirect_to orders_thanks_path
	end

	def thanks
		@cart_items=CartItem.all
	end

	def complete
	end

	def index
	end

	def show
	end

private

def order_params
	params.require(:order).permit(:pay_method, :zip_code, :address, :name)
end

end
