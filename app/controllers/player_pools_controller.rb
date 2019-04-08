class PlayerPoolsController < ApplicationController
  def index    
  end

  def new
    characters = Character.all
    @statuses = Status.all
    @pool = PlayerPool.new
    @selections = []
    characters.each do |character|
      selection = PoolSelection.new(:character_id => character.id)
      @selections.push(selection)
    end
  end

  def create
    redirect_to root_path if !logged_in?
    p "-----oh boy-----"
    @errors = []
    p session[:player_id]
    p "----- NICE -----"
    pool = PlayerPool.new(:player_id => session[:player_id])
    selections = params[:player_pool][:pool_selections_attributes]
    selections.each do |key, value|
      character_name = value[:name]
      status_id = value[:status_id]
      character_id = Character.find_by_name(character_name).id
      pool.pool_selections.build(:character_id => character_id, :status_id => status_id)
    end
    pool.save!
    redirect_to root_path
  end

end
