class AdminController < ApplicationController
  before_filter :count
  
  def count
    @coletas_count = Coleta.count
    @escolas_count = Escola.count
    @monitores_count = Pessoa.monitores.count
  end

  def index
  	redirect_to "/admin/escolas"
  end
  
  def escolas
  	@escolas = Escola.all
  end

  def monitores
  	@monitores = Pessoa.where(:is_monitor)
  end

  def coletas
  	@coletas = Coleta.all
  end
end
