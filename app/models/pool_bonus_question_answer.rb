class PoolBonusQuestionAnswer < ApplicationRecord
  belongs_to :bonus_question
  belongs_to :player_pool

  def points
    if self.correct?
      return self.bonus_question.point_value
    else
      return 0
    end
  end

  def unassigned_points
    if !self.correct?
      return self.bonus_question.point_value
    else
      return 0
    end
  end
end
