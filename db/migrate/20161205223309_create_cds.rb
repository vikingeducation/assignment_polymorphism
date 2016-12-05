class CreateCds < ActiveRecord::Migration[5.0]
  def change
    create_table :cds do |t|
      t.string :type, :default => "Cd"

      t.timestamps
    end
  end
end
