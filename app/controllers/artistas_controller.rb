class ArtistasController < ApplicationController

  def prueba
  	@prueba = Prueba.all
  end

  def ver
  	@prueba = Prueba.find(params[:id])
  end

end
