class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  # Add this before action to force CAS Authentication on all controllers + actions
  before_action CASClient::Frameworks::Rails::Filter, unless: :skip_login?

  # Add this before action to set a local variable for the current user from CAS session
  before_action :getMe

  protected

  def getMe
    current_user = User.find_or_create_by(netid: session[:cas_user])
    if !current_user
      redirect_to :root
      return false
    end
  end

  # hack for skip_before_action with CAS
  # overwrite this method (with 'true') in any controller to skip CAS auth
  def skip_login?
    false
  end
end
