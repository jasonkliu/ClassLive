class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # Add this before filter to force CAS Authentication on all controllers + actions
  before_filter CASClient::Frameworks::Rails::Filter, unless: :skip_login?

  # Add this before filter to set a local variable for the current user from CAS session
  before_filter :getMe

  protected

  def getMe
    @me = User.find_or_create_by_netid(netid: session[:cas_user] )
    if !@me
      redirect_to :root
      return false
    end
  end

  # hack for skip_before_filter with CAS
  # overwrite this method (with 'true') in any controller to skip CAS auth
  def skip_login?
    false
  end
end
