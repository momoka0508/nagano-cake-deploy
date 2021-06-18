class Item < ApplicationRecord
  belongs_to :type
  attachment :image
end
