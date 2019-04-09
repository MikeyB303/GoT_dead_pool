class PlayerPool < ApplicationRecord
  belongs_to :player
  has_many :pool_selections
  has_many :pool_bonus_question_answers
  accepts_nested_attributes_for :pool_selections
  accepts_nested_attributes_for :pool_bonus_question_answers
end
