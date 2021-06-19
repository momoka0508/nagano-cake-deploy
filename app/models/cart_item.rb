class CartItem < ApplicationRecord
	belongs_to :item
	belongs_to :customer

	def tax_price
		item.price * 1.1
	end
	
	def sub_total
		tax_price * quantity
	end

end
