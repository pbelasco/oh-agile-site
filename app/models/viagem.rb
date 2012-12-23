class Viagem
  require 'carrierwave/mongoid'

  include Mongoid::Document
  include Mongoid::Timestamps 

  has_many :tripulantes
  has_one :local_saida, class_name: :local
  has_one :local_retorno, class_name: :local

  field :imagem, type: String
  field :titulo, type: String
  field :data_saida, type: Time
  field :data_retorno, type: Time
  # field :local_saida, type: String
  # field :local_retorno, type: String
  field :descricao, type: String
  field :contratante, type: String
  field :custo_global, type: Float
  field :receita_global, type: Float

  mount_uploader :imagem, ImageUploader

end
