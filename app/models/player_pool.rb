class PlayerPool < ApplicationRecord
  belongs_to :player
  has_many :pool_selections
  has_many :pool_bonus_question_answers
  accepts_nested_attributes_for :pool_selections
  accepts_nested_attributes_for :pool_bonus_question_answers

  def score
    total = 0
    self.pool_selections.each do |selection|
      total += selection.points
    end

    self.pool_bonus_question_answers.each do |question|
      total += question.points
    end

    return total
  end

  def points_remaining
    total = 0
    self.pool_selections.each do |selection|
      total += selection.unassigned_points
    end

    self.pool_bonus_question_answers.each do |question|
      total += question.unassigned_points
    end

    return total
  end

end
