class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login

  def logged_in?
    !!session[:player_id]
  end
  private

  def require_login
    if !logged_in?
      redirect_to new_session_path
    end
  end

end
