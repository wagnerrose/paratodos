class State < ApplicationRecord
  has_many :counties
  has_many :anatel_localities
end
