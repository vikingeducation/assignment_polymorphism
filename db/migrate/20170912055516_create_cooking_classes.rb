class CreateCookingClasses < ActiveRecord::Migration[5.1]
  def change
    create_table :cooking_classes do |t|
      t.string :location
      t.string :taught_by

      t.timestamps
    end
  end
end
