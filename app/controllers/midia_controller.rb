class MidiaController < ApplicationController
  # GET /midia
  # GET /midia.json
  def index
    @midia = Midium.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @midia }
    end
  end

  # GET /midia/1
  # GET /midia/1.json
  def show
    @midium = Midium.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @midium }
    end
  end

  # GET /midia/new
  # GET /midia/new.json
  def new
    @midium = Midium.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @midium }
    end
  end

  # GET /midia/1/edit
  def edit
    @midium = Midium.find(params[:id])
  end

  # POST /midia
  # POST /midia.json
  def create
    @midium = Midium.new(params[:midium])

    respond_to do |format|
      if @midium.save
        format.html { redirect_to @midium, notice: 'Midium was successfully created.' }
        format.json { render json: @midium, status: :created, location: @midium }
      else
        format.html { render action: "new" }
        format.json { render json: @midium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /midia/1
  # PUT /midia/1.json
  def update
    @midium = Midium.find(params[:id])

    respond_to do |format|
      if @midium.update_attributes(params[:midium])
        format.html { redirect_to @midium, notice: 'Midium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @midium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /midia/1
  # DELETE /midia/1.json
  def destroy
    @midium = Midium.find(params[:id])
    @midium.destroy

    respond_to do |format|
      format.html { redirect_to midia_url }
      format.json { head :no_content }
    end
  end
end
