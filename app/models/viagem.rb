class Viagem
  include Mongoid::Document
  field :titulo, type: String
  field :data_saida, type: Time
  field :data_retorno, type: Time
  field :local_saida, type: String
  field :local_retorno, type: String
  field :descricao, type: String
  field :contratante, type: String
  field :custo_global, type: Float
  field :receita_global, type: Float
end
