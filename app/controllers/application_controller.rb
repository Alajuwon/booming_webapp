class ApplicationController < ActionController::Base
  	protect_from_forgery with: :exception

  	before_action :configure_permitted_parameters, if: :devise_controller?

			helper_method :current_user

  		def categories
  			@categories = Category.order(:name)
  		end





 
  		private
 
  		def current_user
   		 @current_user ||= User.find(session[:user_id]) if session[:user_id]
  		end


			protected

			def configure_permitted_parameters

	   	 devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password])
	  	end
end






