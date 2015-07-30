class CreateBabysitters < ActiveRecord::Migration
  def change
    create_table :babysitters do |t|
      t.string :name
      t.integer :babysitterable_id
      t.string :babysitterable_type

      t.timestamps null: false
    end
  end
end
