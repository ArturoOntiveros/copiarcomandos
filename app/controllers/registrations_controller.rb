class RegistrationsController < Devise::RegistrationsController



	private

	def sign_up_params
		params.require(:user).permit(:name, :gender, :nationality, :email, :password, :password_confirmation)
	end

	def account_update_params
		params.require(:user).permit(:name, :gender, :nationality, :email, :password, :password_confirmation, :avatar)
	end

end