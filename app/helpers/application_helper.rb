module ApplicationHelper
  def distancia (loc1_lat, loc1_long, loc2_lat, loc2_long)
    require 'loc'

    loc1 = Loc::Location[loc1_lat, loc1_long]
    loc2 = Loc::Location[loc2_lat, loc2_long]

    #distancia em Quilometros
    '%.2f' % (loc1.distance_to(loc2)/1000)

  end
  def dist_operadora(localidade, estacoes)
    require 'loc'
    loc1 = Loc::Location[localidade.latitude, localidade.longitude]

    operadora= Array.new(2)
    operadora[0] = "Nenhuma habilitada"
    operadora[1] = 999

    estacoes.each do |estacao|
      loc2 = Loc::Location[estacao.latitude, estacao.longitude]
      dist = (loc1.distance_to(loc2)/1000)
      if dist < operadora[1]
        operadora[0] = estacao.mobile_company
        operadora[1] = dist
      end
    end
    return operadora
  end

end
