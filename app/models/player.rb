class Player < ApplicationRecord
  has_secure_password
  has_many :player_selections
  has_many :player_bonus_question_answers
end
