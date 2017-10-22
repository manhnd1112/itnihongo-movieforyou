class Type < ApplicationRecord
  has_many :movie_types
  has_many :movies, through: :movie_types

  mount_uploader :avatar, PhotoUploader
  
  def count_movies
    id = self.id
    same_type = MovieType.where(type_id: id)
    return same_type.count if same_type.present?
    return 0
  end
end
