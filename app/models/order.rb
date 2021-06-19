class Order < ApplicationRecord
	belongs_to :customer
	has_many :order_items, dependent: :destroy

	enum pay_method: { yes: 0, no: 1 }
end
