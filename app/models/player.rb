class Player < ApplicationRecord
  has_secure_password
  has_one :player_pool
  validates :email, uniqueness: true

  def full_name
    self.first_name + " " + self.last_name
  end
end
