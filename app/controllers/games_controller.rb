class GamesController < ApplicationController

  def create
    if Game.where({ :name => params[:name] }).first
      redirect_to :action => :error
    end
    @game = Game.new
    @game.name = params[:name]
    @game.referee = params[:referee]
    if @game.save
      redirect_to :action => :index
    else
      redirect_to :action => :error
    end
  end

  def index
    @all_games = Game.all.sort({ :name => 1 })
  end

  def show
    @game = Game.find(params[:id])
    @players = @game.high_score
  end
end
