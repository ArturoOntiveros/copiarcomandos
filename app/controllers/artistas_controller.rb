class ArtistasController < ApplicationController
  before_action :authenticate_user!
  
  def prueba
  	@prueba = Prueba.all
  end

  def ver
  	@prueba = Prueba.find(params[:id])
  end

end
