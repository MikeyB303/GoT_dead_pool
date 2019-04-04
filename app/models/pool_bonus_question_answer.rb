class PoolBonusQuestionAnswer < ApplicationRecord
  belongs_to :bonus_question
  belongs_to :player_pool
end
