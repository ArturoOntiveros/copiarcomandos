class ProfileController < ApplicationController
  before_action :authenticate_user!
  
  def profile
  	@user = User.all
  end

  def profiledata
  	@userdata = User.find(params[:id])
  end

end
