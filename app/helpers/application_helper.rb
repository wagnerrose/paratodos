module ApplicationHelper
  def distancia (loc1_lat, loc1_long, loc2_lat, loc2_long)
    require 'loc'

    loc1 = Loc::Location[loc1_lat, loc1_long]
    loc2 = Loc::Location[loc2_lat, loc2_long]

    #distancia em Quilometros
    '%.2f' % (loc1.distance_to(loc2)/1000)

  end

end
