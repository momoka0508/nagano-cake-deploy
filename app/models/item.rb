class Item < ApplicationRecord
	has_many :cart_item, dependent: :destroy

  attachment :image
end
