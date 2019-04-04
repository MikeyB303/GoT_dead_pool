class Character < ApplicationRecord
  belongs_to :status
  has_many :pool_selections
end
