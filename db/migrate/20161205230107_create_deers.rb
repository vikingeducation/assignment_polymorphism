class CreateDeers < ActiveRecord::Migration[5.0]
  def change
    create_table :deers do |t|
      t.string :name
      


      t.timestamps
    end
  end
end
