class Player < ApplicationRecord
  has_secure_password
  has_one :player_pool
end
