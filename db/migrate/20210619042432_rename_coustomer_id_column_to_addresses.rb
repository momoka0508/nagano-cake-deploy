class RenameCoustomerIdColumnToAddresses < ActiveRecord::Migration[5.2]
  def change
    rename_column :addresses, :coustomer_id, :customer_id
  end
end
