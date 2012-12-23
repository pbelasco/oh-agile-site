class Habilidade
  include Mongoid::Document
  include Mongoid::Timestamps 

  belongs_to :tripulante

  field :nome, type: String
  field :tipo, type: String
end
