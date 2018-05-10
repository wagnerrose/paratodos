class Station < ApplicationRecord
  belongs_to :county

# usado no Rails Admin
  rails_admin do
    configure :county do
      label 'Município: '
    end
  end


end
