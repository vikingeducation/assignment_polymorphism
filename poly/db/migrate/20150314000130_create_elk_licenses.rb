class CreateElkLicenses < ActiveRecord::Migration
  def change
    create_table :elk_licenses do |t|

      t.timestamps null: false
    end
  end
end
