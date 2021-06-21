class CartItem < ApplicationRecord
	belongs_to :item
	belongs_to :customer

	def tax_price
		(item.price.to_i * 1.1).floor
	end

end
