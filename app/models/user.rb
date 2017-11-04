class User < ApplicationRecord
  attr_accessor :login

  has_many :reviews
  has_many :bookmarks
  has_many :movies, through: :bookmarks
  has_many :comments, dependent: :destroy
  has_many :notifications

  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    authentication_keys: [:login]

  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates_length_of :username, minimum: 4
  # validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, multiline: true
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
        username: auth.info.name,
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

  def bookmarked_movies
    Movie.where(id: bookmarks.pluck(:movie_id)).order id: :desc
  end

  def bookmarked? movie
    self.bookmarks.find_by(movie: movie).present? ? true : false
  end
  
  def bookmark movie
    self.bookmarks.where(movie: movie).last.id
  end

  def load_suggest_users
    User.where.not(id: self.id).order id: :asc
  end

  def not_read_notifications_count
    self.notifications.where(isRead: false).size
  end
end
