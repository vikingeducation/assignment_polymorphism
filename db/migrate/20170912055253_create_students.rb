class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name

      t.integer :commentable_id
      t.string :commentable_type

      t.timestamps
    end

    add_index :students, [:commentable_id, :commentable_type]
  end
end
