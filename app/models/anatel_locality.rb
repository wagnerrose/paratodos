class AnatelLocality < ApplicationRecord
  belongs_to :state

# Atributtes  placeInitials(strubg 4), place(string 50), county(string 50),
# countyInitials(string 4), state_id, latitude(float), longitude(float)

end
