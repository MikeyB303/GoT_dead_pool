class CreatePlayerPools < ActiveRecord::Migration[5.2]
  def change
    create_table :player_pools do |t|
      t.integer :player_id, null: false
      
      t.timestamps
    end
  end
end
