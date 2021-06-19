class Item < ApplicationRecord
  belongs_to :type
	has_many :cart_item, dependent: :destroy
  attachment :image
end
