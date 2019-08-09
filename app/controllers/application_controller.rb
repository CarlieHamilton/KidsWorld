class ApplicationController < ActionController::Base
     before_action :configure_permitted_parameters, if: :devise_controller?


     # to allow devise to accept the username field
 protected
   def configure_permitted_parameters
     devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
     devise_parameter_sanitizer.permit(:account_update, keys: [:username])
   end
end
