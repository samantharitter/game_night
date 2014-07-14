class Referee
  include Mongoid::Document

  field :provider,         type: String
  field :uid,              type: String
  field :fullname,         type: String
  field :oauth_token,      type: String
  field :oauth_expires_at, type: Time

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |ref|
      ref.provider         = auth.provider
      ref.uid              = auth.uid
      ref.fullname         = auth.info.name
      ref.oauth_token      = auth.credentials.token
      ref.oauth_expires_at = Time.at(auth.credentials.expires_at)
      ref.save
    end
  end
end
