class Team
  include Mongoid::Document

  has_many :players

  field :name,    type: String
  field :img,     type: String

  # Get this team's score
  def score
    Plays.where({:team_id => self._id}).sum(:points)
  end

  # Return an array of teams sorted by score in descending order.
  def self.teams_by_score
    Teams.all.sort do |a, b|
      b.score <=> a.score
    end
  end
end
