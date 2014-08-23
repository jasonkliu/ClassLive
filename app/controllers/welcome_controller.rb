class WelcomeController < ApplicationController
  skip_before_action :getMe, only: [:index]

  def skip_login?
    true
  end

  def index
  end
end
