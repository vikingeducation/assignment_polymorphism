class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :address_line_2
      t.string :postcode
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
    add_index :addresses, [:addressable_id, :addressable_type]
  end
end
