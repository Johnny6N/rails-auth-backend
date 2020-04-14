class Ceu < ApplicationRecord
  has_many :maps
  has_many :clients, through: :maps
end
