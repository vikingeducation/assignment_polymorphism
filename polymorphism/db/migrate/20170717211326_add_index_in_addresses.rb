class AddIndexInAddresses < ActiveRecord::Migration[5.0]
  def change
    add_index :addresses, [:stored_address_type, :stored_address_id], name: 'stored_address_polym'
  end
end
