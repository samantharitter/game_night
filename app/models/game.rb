class Game
  include Mongoid::Document

  field :name,    type: String
  field :referee, type: String

  # Validations
  validates_presence_of :name, :referee

  # Return an array of Players, sorted by score on this game.
  def high_score
    Player.all.sort do |a, b|
      score(b._id) <=> score(a._id)
    end
  end

  # Get a particular player's score on this game
  def score(player_id)
    Play.where({:player_id => player_id, :game_id => self._id}).sum(:points)
  end
end
