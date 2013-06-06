#encoding: utf-8
class Coleta < ActiveRecord::Base
	belongs_to :escola
	belongs_to :pessoa
	
	attr_accessible :titulo, :info, :escola_id, :local, :algas, :espuma, :corpos_flutuantes, :materialsedimentavel, :cheiro, :plantas_aquaticas, :peixes_animais, :condicoes_climaticas, :classe_coname, :temperatura_ambiente, :ph, :oxigenio_dissolvido, :amonia, :ferro, :fosfato, :cloro, :turbidez, :cloretos, :dureza, :dqo_campo, :coliformes, :dbo, :detergentes, :pessoa_id, :hora_coleta, :participantes, :responsavel
	validates_presence_of :local, :hora_coleta, :escola, :pessoa, :participantes

	default_scope order("created_at DESC")

	before_validation :validate_data
	before_save :trim
	def trim
		self.titulo.strip
	end

	def validate_data
    	errors.add(:hora_coleta, "não pode ser futura") if self.hora_coleta > Time.now
	end

	def to_param
		[id, local.parameterize].join("-")
	end
end
