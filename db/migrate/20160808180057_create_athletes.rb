class CreateAthletes < ActiveRecord::Migration[5.0]
  def change
    create_table :athletes do |t|
      t.string :name
      t.references :athletable, polymorphic: true

      t.timestamps
    end
  end
end
