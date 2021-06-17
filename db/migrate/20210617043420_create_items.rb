class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :type_id
      t.string :image_id
      t.text :body
      t.integer :price
      t.boolean :is_active

      t.timestamps
    end
  end
end
