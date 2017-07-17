class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :street_address
      t.string :city
      t.string :state_abbr
      t.string :zip
      t.integer :address_id
      t.string :address_type
      t.timestamps
    end
    add_index :addresses, [:address_type, :address_id]
  end
end
