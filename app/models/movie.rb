class Movie < ApplicationRecord
  belongs_to :country, optional: true

  has_many :movie_actors
  has_many :actors, through: :movie_actors
  has_many :movie_types
  has_many :types, through: :movie_types
  has_many :rates
  has_many :bookmarks
  has_many :reviews
  
  attr_accessor :average_rate

  mount_uploader :avatar, PhotoUploader

  def average_rate
    movie = Movie.find_by id: self.id
    rates = movie.rates
    size = rates.size
    total = 0
    rates.each do |rate|
      total += rate.score
    end
    return total * 1.0 / size if size > 0
    return 0
  end
  
  def new_movie?
    today = Date.today
    month_ago = today - 1.month
    return true if (self.realease_date > month_ago) && (self.realease_date < today)
    false
  end
  
  def coming_soon?
    today = Date.today
    return true if self.realease_date > today
    false
  end
end
