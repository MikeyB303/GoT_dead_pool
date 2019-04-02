class CreatePlayerBonusQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :player_bonus_question_answers do |t|

      t.timestamps
    end
  end
end
