class OrderItem < ApplicationRecord
  belongs_to :orders
  belongs_to :items

  enum product_status: {着手不可:0,製作待ち:1,制作中:2,製作完了:3}
end
