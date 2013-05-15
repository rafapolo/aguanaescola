class PagesController < ApplicationController

	def index
		@noticias = Noticium.limit 10
	end

	def mapa_json
		cidades = {}		
		Cidade.joins(:escolas).each do |c|
			cidades[c.id] = []
			cidades[c.id] << {:nome=>c.nome, :url=>c.to_param, :lat=>c.lat, :long=>c.long}
		end
		render :json=>cidades
	end

	def auth
		if params[:auth] && @pessoa = Pessoa.find_by_email_and_senha(params[:auth][:email], params[:auth][:senha])
			session[:auth] = @pessoa.id
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
		@cidades = Cidade.all
		@escolas = Escola.all
		render :layout => false
	end
end
