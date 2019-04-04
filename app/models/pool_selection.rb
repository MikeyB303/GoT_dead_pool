class PoolSelection < ApplicationRecord
  belongs_to :character
  belongs_to :character_status
  belongs_to :player_pool
end
