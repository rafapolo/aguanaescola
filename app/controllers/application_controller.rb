class ApplicationController < ActionController::Base
	protect_from_forgery

	def current_user
		Pessoa.find(session[:auth])
	end

end
