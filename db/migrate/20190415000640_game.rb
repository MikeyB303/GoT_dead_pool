class Game < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.boolean :started?, default: false
      t.boolean :finished?, default: false
      
      t.timestamps
    end
  end
end
