class CreateLabs < ActiveRecord::Migration[5.1]
  def change
    create_table :labs do |t|
      t.string :title
      t.string :building
      t.string :room_number

      t.timestamps
    end
  end
end
