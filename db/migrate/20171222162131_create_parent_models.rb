class CreateParentModels < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title

      t.timestamps
    end

    create_table :applicants do |t|
      t.string :name

      t.timestamps
    end
  end
end
