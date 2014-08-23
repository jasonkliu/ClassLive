class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter RubyCAS::Filter
  before_filter :current_user
  # so we can use current_user in the views
  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_login(session[:cas_user]) if session[:cas_user]
  end
end
