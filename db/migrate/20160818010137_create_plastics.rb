class CreatePlastics < ActiveRecord::Migration[5.0]
  def change
    create_table :plastics do |t|
      t.string :name

      t.timestamps
    end
  end
end
