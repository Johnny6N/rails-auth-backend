class Map < ApplicationRecord
  belongs_to :clients
  belongs_to :usstates
  belongs_to :ceus
end
