class TeamsController < ApplicationController

  def create
    @team = Team.new
    @team.name = params[:teamname]

    # for each player, see if the player already exists, and if so, add them.
    # if not, create new player.
  end

  def index
    @teams_by_score = teams_by_score
  end

  def teams_by_score
    Team.all.sort do |a, b|
      b.score <=> a.score
    end
  end
  helper_method :teams_by_score
end
