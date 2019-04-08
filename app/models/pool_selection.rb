class PoolSelection < ApplicationRecord
  belongs_to :character
  belongs_to :status
  belongs_to :player_pool
end
