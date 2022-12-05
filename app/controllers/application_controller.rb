class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller? 
    protect_from_forgery with: :exception
  
    private

    def set_csrf_token_header
      response.set_header('X-CSRF-Token', form_authenticity_token)
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :self_introduction, :name]) 
      devise_parameter_sanitizer.permit(:account_update, keys:[:email, :self_introduction, :name])
    end
    
    end
