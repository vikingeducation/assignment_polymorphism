class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :source_type
      t.integer :source_id

      t.timestamps
    end

    add_index :books, [:source_type, :source_id]
  end
end
