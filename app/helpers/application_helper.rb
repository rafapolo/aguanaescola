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


end
