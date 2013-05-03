class Noticium < ActiveRecord::Base
  attr_accessible :imagem, :texto, :titulo, :urlized
  validates_presence_of :titulo
  default_scope order("created_at DESC")

  has_attached_file :imagem, :styles => {:thumb => "600x420", :mini=>"150x150"},
    :url => "/uploads/:class/:attachment/:id/:style/:filename",
    :path => ":rails_root/public/uploads/:class/:attachment/:id/:style/:filename"

    before_save :urliza

    def to_param
    	self.urlized
    end

    def urliza
    	self.urlized = titulo.urlize
    end
end
