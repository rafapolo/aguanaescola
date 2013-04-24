class Escola < ActiveRecord::Base
  attr_accessible :nome, :municipio, :trecho_rio, :regiao_hidrografica, :comite_bacia, :lat, :long
  has_many :coletas
  validates_presence_of :nome, :municipio

  def to_param
    [id, nome.parameterize].join("-")
  end
end
