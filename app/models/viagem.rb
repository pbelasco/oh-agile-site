class Viagem < ActiveRecord::Base
  belongs_to :origem
  belongs_to :destino
  attr_accessible :distancia, :motora_id, :retorno, :saida, :titulo, :valor_contrato
end
