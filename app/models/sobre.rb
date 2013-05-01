class Sobre < ActiveRecord::Base
  attr_accessible :texto, :execucao, :parceiros
  validates_presence_of :texto

  has_attached_file :execucao, :styles => {:thumb => "750x"},
    	:url => "/uploads/:class/:attachment/:id/:style/:filename",
    	:path => ":rails_root/public/uploads/:class/:attachment/:id/:style/:filename"

  has_attached_file :parceiros, :styles => {:thumb => "750x"},
    	:url => "/uploads/:class/:attachment/:id/:style/:filename",
    	:path => ":rails_root/public/uploads/:class/:attachment/:id/:style/:filename"
end