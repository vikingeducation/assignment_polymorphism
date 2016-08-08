class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :name
      t.references :residency, polymorphic: true

      t.timestamps null: false
    end

    add_index :residents, [:residency_type, :residency_id]
  end
end
