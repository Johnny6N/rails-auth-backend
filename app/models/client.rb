class Client < ApplicationRecord
  has_many :maps
  has_many :states, through: :maps
  has_many :ceus, through: :maps
end
