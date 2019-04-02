class CreatePlayerSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :player_selections do |t|
      t.integer :character_id, null: false
      t.integer :character_status_id, null: false
      t.integer :player_id, null: false

      t.timestamps
    end
  end
end
