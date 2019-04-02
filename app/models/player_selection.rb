class PlayerSelection < ApplicationRecord
  belongs_to :character
  belongs_to :character_status
  belongs_to :player
end
