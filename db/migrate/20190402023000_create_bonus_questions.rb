class CreateBonusQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :bonus_questions do |t|

      t.timestamps
    end
  end
end
