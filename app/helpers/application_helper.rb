#encoding: utf-8
module ApplicationHelper
	def id_url pessoa
		"/pessoa/#{pessoa.nome}"
	end

	def current_user
		session[:auth]
	end

	def auth_type
		current_user.is_admin? ? "Administrador" : "Monitor | #{current_user.escola.nome} - #{current_user.escola.municipio}"
	end

	def format date
		date.strftime("%d-%m-%Y")
	end

	def format_datetime dt
		dt.strftime("%H:%M %d/%m/%Y")
	end

	def b bool
		return bool ? "Sim" : "Não"
	end

end
