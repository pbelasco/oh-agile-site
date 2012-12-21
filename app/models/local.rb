class Local
  include Mongoid::Document
  field :titulo, type: String
  field :descricao, type: String
  field :logradouro, type: String
  field :numero, type: String
  field :complemento, type: String
  field :cep, type: String
  field :lat, type: Float
  field :lon, type: Float
end
