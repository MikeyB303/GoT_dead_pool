class CreatePoolSelections < ActiveRecord::Migration[5.2]
  def change
    create_table :pool_selections do |t|
      t.integer :character_id, null: false
      t.integer :status_id, null: false
      t.integer :player_pool_id, null: false

      t.timestamps
    end
  end
end
