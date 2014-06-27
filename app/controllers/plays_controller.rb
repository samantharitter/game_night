class PlaysController < ApplicationController

  def cheating
  end

  def noplayer
  end

  def thanks
  end

  def create
    # validate ref code
    @game = Game.find(params[:game_id])
    if params[:ref] != @game.referee
      redirect_to :action => :cheating
      return
    end

    @play = Play.new
    @play.points = params[:points]
    @play.time_of_play = Date.new
    @play.game_id = params[:game_id]

    if @winner = Player.where({ :fullname => params[:name] }).first
      @play.player_id = @winner[:id]
      if @winner.team
        @play.team_id = @winner.team[:id]
      end
    elsif @winner = Team.where({ :name => params[:name] }).first
      @play.team_id = @winner[:id]
    else
      redirect_to :action => :noplayer, :game_id => params[:game_id]
      return
    end

    # save play
    if @play.save
      redirect_to :action => :thanks
    else
      redirect_to :action => :error
    end
  end
end
