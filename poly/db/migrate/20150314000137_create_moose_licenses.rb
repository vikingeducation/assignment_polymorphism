class CreateMooseLicenses < ActiveRecord::Migration
  def change
    create_table :moose_licenses do |t|
      t.string :region
      
      t.timestamps null: false
    end
  end
end
