class ColetasController < ApplicationController

  def index
    @coletas = Coleta.all
  end

  def show
    @coleta = Coleta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def new
    @coleta = Coleta.new
    @data = Time.now.strftime("%d/%m/%Y %H:%M")
    @escolas = current_user.escolas.collect {|p| [ p.nome, p.id ] }
    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def edit
    @coleta = Coleta.find(params[:id])
    @data = @coleta.hora_coleta.strftime("%d/%m/%Y %H:%M")
    @escolas = current_user.escolas.collect {|p| [ p.nome, p.id ] }
  end

  def create
    @coleta = Coleta.new(params[:coleta])
    respond_to do |format|
      if @coleta.save
        format.html { redirect_to @coleta, notice: 'Coletum was successfully created.' }
      else
        @escolas = current_user.escolas.collect {|p| [ p.nome, p.id ] }
        format.html { render action: "new" }
      end
    end
  end

  def update
    @coleta = Coleta.find(params[:id])
    @data = @coleta.hora_coleta.strftime("%d/%m/%Y %H:%M")
    @escolas = current_user.escolas.collect {|p| [ p.nome, p.id ] }
    respond_to do |format|
      if @coleta.update_attributes(params[:coleta])
        format.html { redirect_to @coleta, notice: 'Coletum was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @coleta = Coleta.find(params[:id])
    @coleta.destroy

    respond_to do |format|
      format.html { redirect_to "/admin/coletas" }
    end
  end
end
