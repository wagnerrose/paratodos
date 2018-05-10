class County < ApplicationRecord
  belongs_to :state

  has_many :stations
  has_many :places

end
