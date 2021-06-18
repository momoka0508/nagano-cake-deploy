class Public::CartItemsController < ApplicationController

	def index
		@item=Item.find_by(params[:id],params[:item_id])
		@cart_items=CartItem.all
		@cart_item=CartItem.find(params[:quantity])
	end

	def update
		cart_item=CartItem.find(params[:quantity])
		cart_item.update(cart_item_params)
		redirect_back(fallback_location: root_path)
	end

	def create
	end

	def destroy
		cart_item
	end

	def destroy_all
	end
	
private

def cart_item_params
	params.require(:cart_item).permit(:quantity)
end

end
