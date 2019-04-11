class PlayersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
  end

  def create
    @player = Player.new(player_params)
    @player.email.downcase!
    if @player.save
      session[:player_id] = @player.id
      redirect_to "/"
    else
      @errors = @player.errors.full_messages
      render 'new'
    end
  end

  private
  def player_params
    params.require(:players).permit(:first_name, :last_name, :email, :password)
  end
end
