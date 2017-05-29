class ArtistasController < ApplicationController
  before_action :authenticate_user!
  
  def prueba
  	@artist = Artist.all
  end

  def ver
  	@artist = Artist.find(params[:id])
  end

end
