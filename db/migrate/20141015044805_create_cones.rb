class CreateCones < ActiveRecord::Migration
  def change
    create_table :cones do |t|
      t.string :sizing
      t.string :kind

      t.timestamps
    end
  end
end
