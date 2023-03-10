class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session # avoid CSRF authenticity_token on android 

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
 
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up)  {|u| u.permit(:first_name, :name, :email, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:sign_in)  {|u| u.permit(:email, :password)}
        devise_parameter_sanitizer.permit(:account_update)  {|u| u.permit(:first_name, :name, :email, :password, :password_confirmation)}
    end
    
end
