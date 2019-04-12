class CreatePlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :players do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :email, null: false
      t.boolean :admin?, default: false
      t.boolean :paid?, default: false
      t.string :password_digest

      t.timestamps
    end
    add_index :players, :email, unique: true
  end
end
