class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name, :null => false, :unique => true
      t.integer :employable_id
      t.string :employable_type

      t.timestamps
    end
    add_index :employees, [:employable_id, :employable_type]
  end
end
