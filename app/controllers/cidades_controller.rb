class CidadesController < ApplicationController

  def show
    @cidade = Cidade.find(params[:id])
  end

 end
