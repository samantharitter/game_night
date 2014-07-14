class PlaysController < ApplicationController

  def cheating
  end

  def noplayer
  end

  def thanks
  end

  def new
    # need this to autocomplete names
    @game = Game.find(params[:game_id])
    @player_names = Player.all.collect do |player|
      player.fullname
    end
    @team_names = Team.all.collect do |team|
      team.name
    end
    @all_names = @player_names + @team_names
  end

  def create
    @game = Game.find(params[:game_id])

    @play = Play.new
    # check that points is an integer
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
