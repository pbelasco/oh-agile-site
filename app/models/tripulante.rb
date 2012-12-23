class Tripulante
  include Mongoid::Document
  include Mongoid::Timestamps 

  has_many :habilidades
  belongs_to :user

  field :bio, type: String
  field :nome, type: String
  field :email, type: String
  field :telefone, type: String
  field :rg, type: String
  field :cpf, type: String
  field :facebook, type: String
  field :twitter, type: String
  field :nascimento, type: Date
  field :genero, type: String
  field :foto, type: String
end
