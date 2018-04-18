class User < ActiveRecord::Base


has_many :assignments
has_many :roles, through: :assignments

  def role?(role)
    roles.any? { |r| r.name.underscore.to_sym == role }
  end

  def role(user)
    role = (Role.where(id: Assignment.where(user_id: user.id)).first)

    return role.name
  end

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.email = auth.info.email
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!
    end
  end
end
