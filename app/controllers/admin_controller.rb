class AdminController < ApplicationController
  before_filter :count

  def count
    @coletas_count = Coleta.count
    @escolas_count = Escola.count
    @monitores_count = Pessoa.monitores.count
    redirect_to '/login' unless current_user
  end

  def index
  	admin = current_user.is_monitor? ? "/admin/coletas" : "/admin/monitores"
    redirect_to admin
  end

  def escolas
  	@escolas = Escola.all
  end

  def noticia
    @noticia = Noticium.all
  end

  def monitores
  	@monitores = Pessoa.monitores
  end

  def coletas
  	@coletas = Coleta.all
  end

  def sobre
    @sobre = Sobre.first
  end
end
