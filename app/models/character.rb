class Character < ApplicationRecord
  belongs_to :character_status
  has_many :player_selections
end
