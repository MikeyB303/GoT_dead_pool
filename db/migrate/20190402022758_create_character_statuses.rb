class CreateCharacterStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :character_statuses do |t|
      t.string :status_label, null: false
      
      t.timestamps
    end
  end
end
