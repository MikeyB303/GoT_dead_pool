class PlayerBonusQuestionAnswer < ApplicationRecord
  belongs_to :bonus_question
  belongs_to :player
end
