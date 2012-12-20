class ToLocal < ActiveRecord::Base
  belongs_to :local
  belongs_to :viagem
  belongs_to :user
  belongs_to :tripulante
  # attr_accessible :title, :body
end
