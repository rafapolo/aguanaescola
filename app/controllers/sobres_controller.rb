class SobresController < AdminController

  def update
    @sobre = Sobre.first

    respond_to do |format|
      if @sobre.update_attributes(params[:sobre])
        format.html { redirect_to "/admin/sobre", notice: 'Sobre foi editado corretamente.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
