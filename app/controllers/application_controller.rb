class ApplicationController < ActionController::Base
    include SessionsHelper

    def required_logged_in_user
        unless user_signed_in?
        flash[:danger] = 'Área restrita. Por favoft, realize o login'
        redirect_to entrar_path
        else
            user_contacts_path
        end
    end
end
