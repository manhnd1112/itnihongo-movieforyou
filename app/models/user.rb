class User < ApplicationRecord
  attr_accessor :login

  has_many :reviews
  has_many :bookmarks
  has_many :movies, through: :bookmarks
  has_many :comments, dependent: :destroy

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    authentication_keys: [:login]

  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates_length_of :username, minimum: 4
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, multiline: true
  validate :validate_username

  mount_uploader :avatar, AvatarUploader

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      where(conditions).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    else
      if conditions[:username].nil?
        where(conditions).first
      else
        where(username: conditions[:username]).first
      end
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
        user.email = data["email"] if user.email.blank?
      end
    end
  end

  def self.from_omniauth(auth)
    user = User.find_by('email = ?', auth['info']['email'])
    if user.blank?
      user = User.new({
        provider: auth.provider,
        uid: auth.uid,
        username: auth.info.first_name,
        name: auth.info.name,
        remote_avatar_url: auth.info.image.gsub('http://','https://'),
        email: auth.info.email,
        password: Devise.friendly_token[0,20]
      })
      user.save!
    end
    user
  end

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end
end
