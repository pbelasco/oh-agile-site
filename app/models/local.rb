class Local < ActiveRecord::Base
  attr_accessible :cep, :cidade, :lat, :lon, :nome, :numero, :rua, :uf
end
