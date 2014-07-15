class Player
  include Mongoid::Document

  belongs_to :team

  field :fullname, type: String
  field :user_key, type: String
  field :img,      type: String

  # Get this player's overall score
  def score
    Play.where({:player_id => self._id}).sum(:points)
  end

  # Get this player's number of games played
  def games_played
    Play.where({:player_id => self._id}).distinct(:game_id).length
  end
end
