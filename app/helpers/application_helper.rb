#encoding: utf-8
module ApplicationHelper
	def id_url pessoa
		"/pessoa/#{pessoa.nome}"
	end

	def current_user
		session[:auth]
	end

	def auth_type
		current_user.is_admin? ? "Administrador" : "Monitor | #{current_user.escola.nome} - #{current_user.escola.cidade.nome}"
	end

	def format date
		date.strftime("%d/%m/%Y")
	end

	def text_format t
		t.gsub(/\n/, '<br>').html_safe if t
	end

	def format_datetime dt
		dt.strftime("%d/%m/%Y %H:%M%P")
	end

	def b boolean
		return boolean ? "Sim" : "Não"
	end

end