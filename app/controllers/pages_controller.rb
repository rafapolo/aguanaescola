class PagesController < ApplicationController

	def index
	end

	def auth
		if params[:auth] && @pessoa = Pessoa.find_by_email_and_senha(params[:auth][:email], params[:auth][:senha])
			session[:auth] = @pessoa
			redirect_to @pessoa
		else
			# error
			session[:auth] = false
			flash[:error] = true
			render "pages/login"
		end
	end

	def logout
		session[:auth] = false
		redirect_to "/"
	end
end
