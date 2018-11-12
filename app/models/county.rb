class County < ApplicationRecord
  belongs_to :state

# attribuites name(string 50), latitude(float), longitude(float), state_id

  has_many :stations
  has_many :places

end

