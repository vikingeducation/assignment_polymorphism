class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :city
      t.string :state_abbr
      t.string :zip
      t.references :stored_address, polymorphic: true

      t.timestamps
    end
    add_index :addresses, [:stored_address_type, :stored_address_id], unique: true, name: 'stored_address_polym'
  end
end
