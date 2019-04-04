class PlayerPool < ApplicationRecord
  belongs_to :player
  has_many :pool_selections
  has_many :pool_bonus_question_answers
end
