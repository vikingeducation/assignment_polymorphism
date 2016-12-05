class CreateMp3s < ActiveRecord::Migration[5.0]
  def change
    create_table :mp3s do |t|
      t.string :type, :default => "Mp3"

      t.timestamps
    end
  end
end
