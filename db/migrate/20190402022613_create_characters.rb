class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name, null: false
      t.integer :character_status_id, null: false

      t.timestamps
    end
  end
end
