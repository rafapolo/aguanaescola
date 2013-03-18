class Coleta < ActiveRecord::Base
	belongs_to :escola
	attr_accessible :titulo, :info, :escola_id

	validates_presence_of :titulo, :escola

	def to_param
	[id, nome.parameterize].join("-")
	end
end
