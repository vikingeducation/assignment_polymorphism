class CreateTeacherAssistants < ActiveRecord::Migration[5.0]
  def change
    create_table :teacher_assistants do |t|
      t.string  :name,           null: false
      t.integer :assistable_id
      t.string  :assistable_type

      t.timestamps
    end

    add_index :teacher_assistants, [:assistable_id, :assistable_type]
  end
end
