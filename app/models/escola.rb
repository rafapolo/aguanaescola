class Escola < ActiveRecord::Base
  attr_accessible :nome, :municipio
  has_many :coletas
end
