class CartItem < ApplicationRecord
	belongs_to :item
	belongs_to :customer

	def tax_price
		(item.price.to_i * 1.1).floor
	end

	def sub_price
		self.tax_price * self.quantity
	end

end
