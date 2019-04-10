class PlayerPoolsController < ApplicationController
  def index    
  end

  def new
    @statuses = Status.all
    @pool = PlayerPool.new

    characters = Character.all
    @selections = []
    characters.each do |character|
      selection = PoolSelection.new(:character_id => character.id)
      @selections.push(selection)
    end

    questions = BonusQuestion.all
    @bonus_questions = []
    questions.each do |question|
      bonus_question = PoolBonusQuestionAnswer.new(:bonus_question_id => question.id)
      @bonus_questions.push(bonus_question)
    end
  end

  def create
    redirect_to root_path if !logged_in?
    @errors = []
    
    pool = PlayerPool.new(:player_id => session[:player_id])
    
    selections = params[:player_pool][:pool_selections_attributes]
    selections.each do |key, value|
      character_name = value[:name]
      status_id = value[:status_id]
      character_id = Character.find_by_name(character_name).id
      pool.pool_selections.build(:character_id => character_id, :status_id => status_id)
    end

    bonus_questions = params[:player_pool][:pool_bonus_question_answers_attributes]
    bonus_questions.each do |key, value|
      question_label = value[:question]
      question_answer = value[:answer]
      question_id = BonusQuestion.find_by_label(question_label).id
      pool.pool_bonus_question_answers.build(:bonus_question_id => question_id, :answer => question_answer)
    end

    pool.save!
    redirect_to root_path
  end

  def edit
    @pool = PlayerPool.find_by(id: params[:id])
  end

  def update
    pool = PlayerPool.find_by(id: params[:id])
    pool.pool_selections.destroy_all
    pool.pool_bonus_question_answers.destroy_all

    selections = params[:player_pool][:pool_selections_attributes]
    selections.each do |key, value|
      character_name = value[:name]
      status_id = value[:status_id]
      character_id = Character.find_by_name(character_name).id
      pool.pool_selections.build(:character_id => character_id, :status_id => status_id)
    end

    bonus_questions = params[:player_pool][:pool_bonus_question_answers_attributes]
    bonus_questions.each do |key, value|
      question_label = value[:question]
      question_answer = value[:answer]
      question_id = BonusQuestion.find_by_label(question_label).id
      pool.pool_bonus_question_answers.build(:bonus_question_id => question_id, :answer => question_answer)
    end

    pool.save!
    redirect_to root_path
  end

end
