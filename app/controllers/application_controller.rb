class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :require_login, :pool_made?

  def logged_in?
    !!session[:player_id]
  end
  private

  def require_login
    if !logged_in?
      redirect_to new_session_path
    end
  end

  def pool_made?
    if logged_in?
      current_player = Player.find_by_id(session[:player_id])
      p current_player.player_pool
      if !current_player.player_pool
        @pool_available = false
      else
        @pool_available = true
        @pool_id = current_player.player_pool.id
      end
    else
      @pool_available = false
    end
  end

end
