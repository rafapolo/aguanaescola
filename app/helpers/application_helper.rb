module ApplicationHelper
	def id_url pessoa
		"/pessoa/#{pessoa.nome}"
	end

	def current_user
		session[:auth]
	end

	def format date
		date.strftime("%d-%m-%Y")
	end

end
