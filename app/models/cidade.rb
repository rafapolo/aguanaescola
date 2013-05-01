class Cidade < ActiveRecord::Base
  attr_accessible :nome
  validates_uniqueness_of :nome
  validates_presence_of :nome

  has_many :escolas
  has_many :coletas, :through=>:escolas
  default_scope order(:nome)

  def to_param
    [id, nome.parameterize].join("-")
  end
end
