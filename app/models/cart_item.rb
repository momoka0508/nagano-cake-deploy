class CartItem < ApplicationRecord
	belongs_to :item
	belongs_to :order

	def tax_price(price)
		tax_included_price = item.price * 1.1
	end

end
