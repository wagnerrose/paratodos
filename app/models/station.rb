class Station < ApplicationRecord
  belongs_to :county


# attributes mobile_company(string), code(string 15), namne(string 50)
# state(string 2), county_id, neighborhood(sring 50), address (string)
# latitude(float), longitude(float)

# usado no Rails Admin
  rails_admin do
    configure :county do
      label 'Município: '
    end
  end
end
