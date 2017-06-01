class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.integer :user_id
      t.string :body

      t.timestamps
    end

    add_index :statuses, :user_id
  end
end
