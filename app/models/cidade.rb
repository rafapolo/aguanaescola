class Cidade < ActiveRecord::Base
  attr_accessible :nome
  validates_uniqueness_of :nome
  validates_presence_of :nome

  has_many :escolas
  has_many :coletas, :through=>:escolas
  default_scope order(:nome)

  before_save :geocode

  def geocode
  	gps = Geocoder.search "#{self.nome}, Rio de Janeiro"
  	self.lat = gps[0].latitude
  	self.long = gps[0].longitude
  end

  def to_param
    [id, nome.parameterize].join("-")
  end
end
