class CreateRecords < ActiveRecord::Migration[5.0]
  def change
    create_table :records do |t|
      t.string :type, :default => "Record"

      t.timestamps
    end
  end
end
