class Public::CartItemsController < ApplicationController

	before_action :setup_cart_item!, only: [:update, :create, :destroy, :destroy_all]

	def index
		@cart_items=current_cart
	end

	def create
		@cart_item=CartItem.new(cart_item_params)
		@cart_item.customer_id = current_user.id
		@cart_item.save
		redirect_to cart_items_path
	end

	def update
		cart_item=CartItem.find(params[:quantity])
		cart_item.update(cart_item_params)
		redirect_back(fallback_location: root_path)
	end

	def destroy
		cart_item
	end

	def destroy_all
	end

private

def setup_cart_item!
	@cart_item=CartItem.find_by(item_id: params[:item_id])
end

def cart_item_params
	params.require(:cart_item).permit(:quantity)
end

end
