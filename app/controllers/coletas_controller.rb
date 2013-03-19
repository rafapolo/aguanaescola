class ColetasController < ApplicationController
  # GET /coleta
  # GET /coleta.json
  def index
    @coletas = Coleta.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /coleta/1
  # GET /coleta/1.json
  def show
    @coleta = Coleta.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /coleta/new
  # GET /coleta/new.json
  def new
    @coleta = Coleta.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /coleta/1/edit
  def edit
    @coleta = Coleta.find(params[:id])
  end

  # POST /coleta
  # POST /coleta.json
  def create
    @coleta = Coleta.new(params[:coleta])

    respond_to do |format|
      if @coleta.save
        format.html { redirect_to @coleta, notice: 'Coletum was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /coleta/1
  # PUT /coleta/1.json
  def update
    @coleta = Coleta.find(params[:id])

    respond_to do |format|
      if @coleta.update_attributes(params[:coletum])
        format.html { redirect_to @coleta, notice: 'Coletum was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  # DELETE /coleta/1
  # DELETE /coleta/1.json
  def destroy
    @coleta = Coleta.find(params[:id])
    @coleta.destroy

    respond_to do |format|
      format.html { redirect_to coleta_url }
    end
  end
end
