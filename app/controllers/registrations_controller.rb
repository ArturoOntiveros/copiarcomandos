class RegistrationsController < Devise::RegistrationsController


  protected

  def update_resource(resource, params)
    resource.update_without_password(params)
  end


	private

	def sign_up_params
		params.require(:user).permit(:name, :gender, :nationality, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:name, :gender, 
			:nationality, :tarjeta, :cvv, :vencimiento, :email, :password, :password_confirmation, 
			:avatar)
	end

end