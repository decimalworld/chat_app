class ApplicationController < ActionController::Base
  helper_method :logged_in?, :current_user

  def logged_in?
    !!session[:user_id]
  end

  def current_user
    @current_user = User.find(session[:user_id]) if logged_in?
  end

  def require_user
    if !logged_in?
      redirect_to login_path, alert: "You must be logged in to perform action"
    end
  end

end
