class Type < ApplicationRecord
  has_many :movie_types
  has_many :movies, through: :movie_types

  mount_uploader :avatar, PhotoUploader
end
