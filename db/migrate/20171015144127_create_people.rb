class CreatePeople < ActiveRecord::Migration[5.0]
  def change
    create_table :people do |t|
      t.string :forename
      t.string :surname
      t.string :email

      t.timestamps
    end
  end
end
