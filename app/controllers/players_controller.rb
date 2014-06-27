class PlayersController < ApplicationController

  def create
    @player = Player.new
    @player.fullname = params[:fullname]
    @player.email = params[:email]
    if @player.save
      redirect_to :action => :index
    else
      redirect_to :action => :error
    end
  end

  def show
  end

  def index
    @players_by_score = players_by_score
  end

  # Return an array of all players, sorted by score in descending order.
  def players_by_score
    Player.all.sort do |a, b|
      b.score <=> a.score
    end
  end
  helper_method :players_by_score
end
