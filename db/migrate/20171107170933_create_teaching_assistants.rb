class CreateTeachingAssistants < ActiveRecord::Migration[5.1]
  def change
    create_table :teaching_assistants do |t|
      t.references :teach_duty, polymorphic: true
      t.string :first_name
      t.string :last_name
      t.string :classification

      t.timestamps
    end
  end
end
