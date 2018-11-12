class State < ApplicationRecord
  has_many :counties
  has_many :anatel_localities

  # attributes state(string), name(string)
end
