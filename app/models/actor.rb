class Actor < ApplicationRecord
  belongs_to :country, optional: true

  has_many :movie_actors
  has_many :movies, through: :movie_actors

  mount_uploader :avatar_image, AvatarUploader
end
