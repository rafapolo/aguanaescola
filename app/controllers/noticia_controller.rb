class NoticiaController < ApplicationController

  def index
    @noticia = Noticium.all
  end

  
  def show
    @noticium = Noticium.find(params[:id])
  end

  
  def new
    @noticium = Noticium.new
  end

  def edit
    @noticium = Noticium.find(params[:id])
  end

  def create
    @noticium = Noticium.new(params[:noticium])

    respond_to do |format|
      if @noticium.save
        format.html { redirect_to @noticium, notice: 'Noticium was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @noticium = Noticium.find(params[:id])

    respond_to do |format|
      if @noticium.update_attributes(params[:noticium])
        format.html { redirect_to @noticium, notice: 'Noticium was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @noticium = Noticium.find(params[:id])
    @noticium.destroy

    respond_to do |format|
      format.html { redirect_to noticia_url }
    end
  end
end
