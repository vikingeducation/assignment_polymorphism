class CreateMothers < ActiveRecord::Migration
  def change
    create_table :mothers do |t|
      
      t.string :name

      t.timestamps null: false
    end
  end
end
