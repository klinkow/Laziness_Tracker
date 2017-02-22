class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :user

def user
  # @current_user ||= User.find(session[:user_id]) if session[:user_id]
  @user ||= User.find(current_user.id) if current_user
  end
end
