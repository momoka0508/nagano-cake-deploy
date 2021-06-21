class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :pay_method
      t.integer :order_status, default: 0
      t.integer :fare
      t.integer :total_money
      t.string :zip_code
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
