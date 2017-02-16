class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by(session_token: session[:session_token])
  end

  def login(user)
    @current_user = user #@ because you are setting instance variable
    session[:session_token] = current_user.session_token
  end

  def logout
    @current_user = nil
    session[:session_token] = ""
  end

  def logged_in?
    current_user == user
  end

  def logged_out?
    current_user != user
  end
end
