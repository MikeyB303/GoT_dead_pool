class CreatePoolBonusQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :pool_bonus_question_answers do |t|
      t.integer :bonus_question_id, null: false
      t.integer :player_pool_id, null: false
      t.string :answer, null: false
      t.boolean :correct?, default: false, null: false

      t.timestamps
    end
  end
end
