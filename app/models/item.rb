class Item < ApplicationRecord
  belongs_to :type
	has_many :cart_item, dependent: :destroy
  attachment :image
  
  validates :name, presence: true
  validates :body, presence: true
  validates :price, presence: true
end
