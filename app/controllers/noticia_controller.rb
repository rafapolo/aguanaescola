class NoticiaController < ApplicationController

  def index
    @noticia = Noticium.all
  end

  def show
    @noticium = Noticium.find_by_urlized(params[:id])
    redirect_to "/noticias", notice: "Notícia não encontrada" unless @noticium
  end

  def new
    @noticia = Noticium.new
  end

  def edit
    @noticia = Noticium.find_by_urlized(params[:id])
  end

  def create
    @noticium = Noticium.new(params[:noticium])

    respond_to do |format|
    if @noticium.save
        format.html { redirect_to "/admin/noticia", notice: 'Noticium was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    @noticium = Noticium.find_by_urlized(params[:id])

    respond_to do |format|
      if @noticium.update_attributes(params[:noticium])
        format.html { redirect_to "/admin/noticia", notice: 'Noticium was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @noticium = Noticium.find_by_urlized(params[:id])
    @noticium.destroy

    respond_to do |format|
      format.html { redirect_to "/admin/noticia" }
    end
  end
end
