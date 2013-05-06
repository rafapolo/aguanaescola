class Pessoa < ActiveRecord::Base
  has_and_belongs_to_many :escolas

  scope :alunos, where('is_monitor = ?', false)
  scope :monitores, where('is_monitor = ?', true)
  
  attr_accessible :email, :nascimento, :nome, :senha, :avatar, :escola_ids
  validates_presence_of :nome
  validates_uniqueness_of :email

  has_attached_file :avatar, :styles => { :thumb => "64x64>" }, 
    :default_url => "/assets/default_user.png",
    :url => "/uploads/:class/:attachment/:style/:filename",
    :path => ":rails_root/public/uploads/:class/:attachment/:style/:filename"
  
  validates_attachment :avatar,
  	:content_type => { :content_type => /image/ },
  	:size => { :in => 0..5.megabytes }  

  before_create :cria_senha
  def cria_senha
    self.senha = (0...8).map{(65+rand(26)).chr}.join
    self.is_monitor = true
  end

  def to_param
    [id, nome.parameterize].join("-")
  end

end
