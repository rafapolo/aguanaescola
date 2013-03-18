class EscolasController < ApplicationController
 
  def index
    @escolas = Escola.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @escolas }
    end
  end

 
  def show
    @escola = Escola.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @escola }
    end
  end

 
  def new
    @escola = Escola.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @escola }
    end
  end

  # GET /escolas/1/edit
  def edit
    @escola = Escola.find(params[:id])
  end

  # POST /escolas
  # POST /escolas.json
  def create
    @escola = Escola.new(params[:escola])

    respond_to do |format|
      if @escola.save
        format.html { redirect_to @escola, notice: 'Escola was successfully created.' }
        format.json { render json: @escola, status: :created, location: @escola }
      else
        format.html { render action: "new" }
        format.json { render json: @escola.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /escolas/1
  # PUT /escolas/1.json
  def update
    @escola = Escola.find(params[:id])

    respond_to do |format|
      if @escola.update_attributes(params[:escola])
        format.html { redirect_to @escola, notice: 'Escola was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @escola.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /escolas/1
  # DELETE /escolas/1.json
  def destroy
    @escola = Escola.find(params[:id])
    @escola.destroy

    respond_to do |format|
      format.html { redirect_to "/admin/escolas" }
      format.json { head :no_content }
    end
  end
end
