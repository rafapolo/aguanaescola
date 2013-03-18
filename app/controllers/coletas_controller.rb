class ColetasController < ApplicationController
  # GET /coleta
  # GET /coleta.json
  def index
    @coleta = Coletum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @coleta }
    end
  end

  # GET /coleta/1
  # GET /coleta/1.json
  def show
    @coletum = Coletum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @coletum }
    end
  end

  # GET /coleta/new
  # GET /coleta/new.json
  def new
    @coletum = Coletum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @coletum }
    end
  end

  # GET /coleta/1/edit
  def edit
    @coletum = Coletum.find(params[:id])
  end

  # POST /coleta
  # POST /coleta.json
  def create
    @coletum = Coletum.new(params[:coletum])

    respond_to do |format|
      if @coletum.save
        format.html { redirect_to @coletum, notice: 'Coletum was successfully created.' }
        format.json { render json: @coletum, status: :created, location: @coletum }
      else
        format.html { render action: "new" }
        format.json { render json: @coletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /coleta/1
  # PUT /coleta/1.json
  def update
    @coletum = Coletum.find(params[:id])

    respond_to do |format|
      if @coletum.update_attributes(params[:coletum])
        format.html { redirect_to @coletum, notice: 'Coletum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @coletum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coleta/1
  # DELETE /coleta/1.json
  def destroy
    @coletum = Coletum.find(params[:id])
    @coletum.destroy

    respond_to do |format|
      format.html { redirect_to coleta_url }
      format.json { head :no_content }
    end
  end
end
