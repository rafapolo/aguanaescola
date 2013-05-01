class PagesController < ApplicationController

	def index
		@noticias = Noticium.limit 10
	end

	def auth
		if params[:auth] && @pessoa = Pessoa.find_by_email_and_senha(params[:auth][:email], params[:auth][:senha])
			session[:auth] = @pessoa
			redirect_to admin_path
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

	def sobre
    	@sobre = Sobre.first
  	end

  	def noticias
  		@noticias = Noticium.all
  	end

	def sitemap		
		@noticias = Noticium.all		
		@coletas = Coleta.all
		@escolas = Escola.all
		render :layout => false
	end
end
