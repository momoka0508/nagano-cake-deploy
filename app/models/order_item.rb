class OrderItem < ApplicationRecord
  has_many :orders, dependent: :destroy
  has_many :items, dependent: :destroy
end
