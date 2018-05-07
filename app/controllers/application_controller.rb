class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :configure_permitted_parameters, if: :devise_controller?

	protected
	
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :lastName, :personalId, :age, :role, :email, :password])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password, :remenber_me])
		devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :email, :password, :password_confirmation, :current_password])
	end
end
