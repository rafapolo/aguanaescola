class Escola < ActiveRecord::Base  
  belongs_to :cidade
  has_many :coletas
  has_and_belongs_to_many :pessoas

  attr_accessible :nome, :cidade_id, :trecho_rio, :regiao_hidrografica, :comite_bacia, :comite_bacia_url, :lat, :long, :info
  validates_presence_of :nome, :cidade_id, :trecho_rio, :regiao_hidrografica, :comite_bacia

  def to_param
    [id, nome.parameterize].join("-")
  end
end
