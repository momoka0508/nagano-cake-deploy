class CreateOrderItems < ActiveRecord::Migration[5.0]
  def change
    create_table :order_items do |t|
      t.integer :created_at
      t.integer :item_id
      t.integer :tax_price
      t.integer :quantity
      t.integer :product_status

      t.timestamps
     
    end
  end
end
