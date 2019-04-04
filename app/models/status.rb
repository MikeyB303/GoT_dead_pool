class Status < ApplicationRecord
  has_many :characters
  has_many :pool_selections
end
