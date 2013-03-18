class Pessoa < ActiveRecord::Base
  belongs_to :escola
  attr_accessible :email, :nascimento, :nome, :senha, :avatar

  has_attached_file :avatar, :styles => { :thumb => "64x64>" }, :default_url => "/assets/default_user.png"
  
  validates_presence_of :nome, :senha
  validates_uniqueness_of :email
  
  validates_attachment :avatar,
  	:content_type => { :content_type => /image/ },
  	:size => { :in => 0..5.megabytes }

  scope :monitores, where(:is_monitor)
  
end
