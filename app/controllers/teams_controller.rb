class TeamsController < ApplicationController

  def create
    @team = Team.new
    @team.name = params[:teamname]

    # for each player, see if the player already exists, and if so, add them.
    # if not, create new player.
  end
end
