class CreateCollars < ActiveRecord::Migration[5.0]
  def change
    create_table :collars do |t|
      t.string :name
      t.string :phone
      t.integer :collarable_id
      t.string :collarable_type

      t.timestamps
    end
  end
end
