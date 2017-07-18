class RemoveStoredAddressInAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_index :addresses, column: [:stored_address_type, :stored_address_id], name: "index_addresses_on_stored_address_type_and_stored_address_id", using: :btree
    remove_index :addresses, column: [:stored_address_type, :stored_address_id], name: "stored_address_polym", unique: true, using: :btree
  end
end




