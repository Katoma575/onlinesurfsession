class ApplicationController < ActionController::Base
    before_action :configure_parmitted_parameters, if: :devise_controller?
    protect_from_forgery with: :exception
    
    # before_action :authenticate_user!
    
    def after_sign_in_path_for(resorce)
        user_path
    end
    
    def after_sign_up_path_for(resorce)
        user_path
    end
    
    def after_sign_out_path_for(resouce_or_scope)
        new_user_session_path
    end
    
    protected
    
    def configure_parmitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end 
