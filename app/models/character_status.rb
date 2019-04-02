class CharacterStatus < ApplicationRecord
  has_many :characters
  has_many :player_selections
end
