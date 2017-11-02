class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private
  
    helper_method :current_user, :is_teacher
  
    def is_teacher
      session[:is_teacher]
    end

    def current_user
      if is_teacher
        @current_user ||= Teacher.find_by(id: session[:user_id]) if session[:user_id]
      else
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
      end
    end

    def authorize
      redirect_to login_path, alert: 'Not authorized - you must be logged in!' if current_user.nil?
    end


end
