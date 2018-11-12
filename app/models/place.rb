class Place < ApplicationRecord
  belongs_to :county

  #atributes neighborhood(string 50), address(sring 250), latitude (float),
  # longitude(float), county_id( bigint)

  # usado no Rails Admin
  rails_admin do
    configure :county do
      label 'Município: '
    end
  end

end

