class Team
  include Mongoid::Document

  has_many :players

  field :name,    type: String
  field :img,     type: String

  # Get this team's score
  def score
    Play.where({:team_id => self._id}).sum(:points)
  end
end
