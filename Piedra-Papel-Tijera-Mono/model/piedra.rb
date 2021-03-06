require_relative '../model/elementos'

class Piedra < Elementos

  def resultado(elem1)
    hs = {:Tijera => :GANA, :Papel => :PIERDE}
    hs.default = :EMPATA

    hs[elem1.class.name.to_sym]
  end

  def vence_a_mono(elem)
    elem.es_empatado
  end

end