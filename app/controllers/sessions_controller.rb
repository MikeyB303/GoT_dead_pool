class SessionsController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]
  def new
  end

  def create
    player = Player.find_by(player_name: params[:sessions][:player_name])
    if player && player.authenticate(params[:sessions][:password])
      session[:player_id] = player.id
      redirect_to '/'
    else
      @errors = ["Invalid username/password combination"]
      render new_session_path
    end
  end

  def destroy
    session.destroy
    redirect_to "/"
  end
end
