class FixColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :addresses, :address_id, :stored_address_id
    rename_column :addresses, :address_type, :stored_address_type
  end
end
