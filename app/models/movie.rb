class Movie < ApplicationRecord
  belongs_to :country, optional: true

  has_many :movie_actors
  has_many :actors, through: :movie_actors
  has_many :movie_types
  has_many :types, through: :movie_types
  has_many :rates
  has_many :bookmarks

  mount_uploader :avatar, PhotoUploader
end
