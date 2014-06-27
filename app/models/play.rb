class Play
  include Mongoid::Document

  field :player_id,    type: BSON::ObjectId
  field :team_id,      type: BSON::ObjectId
  field :game_id,      type: BSON::ObjectId
  field :points,       type: Integer
  field :time_of_play, type: Date

  # Validations
  validates_presence_of :game_id, :points
end
