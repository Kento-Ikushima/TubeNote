class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 

  def after_sign_out_path_for(resource)
    user_session_path
  end

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys:[:email, :self_introduction, :name]) 
      devise_parameter_sanitizer.permit(:account_update, keys:[:email, :self_introduction, :name])
    end
    
    end
