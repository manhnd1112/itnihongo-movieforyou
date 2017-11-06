class Movie < ApplicationRecord
  belongs_to :country, optional: true

  has_many :movie_actors
  has_many :actors, through: :movie_actors, dependent: :destroy
  has_many :movie_types
  has_many :types, through: :movie_types, dependent: :destroy
  has_many :rates
  has_many :bookmarks
  has_many :reviews

  accepts_nested_attributes_for :actors, allow_destroy: true
  accepts_nested_attributes_for :movie_actors

  validates :name, presence: true, uniqueness: true

  attr_accessor :average_rate

  mount_uploader :avatar, PhotoUploader

  ransack_alias :movie, :name_or_description_or_producer_or_director_or_actors_name

  def average_rate
    movie = Movie.find_by id: self.id
    rates = movie.rates
    size = rates.size
    total = 0
    rates.each do |rate|
      total += rate.score
    end
    return total * 1.0 / size if size > 0
    0
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

  private

  # def self.ransackable_scopes(auth_object = nil)
  #   if auth_object.try(:admin?)
  #     %i(activated hired_since salary_gt)
  #   else
  #     %i(activated hired_since)
  #   end
  # end

  def self.ransortable_attributes(auth_object = nil)
    %w(name imdb realease_date) + _ransackers.keys
  end

  def self.ransackable_attributes(auth_object = nil)
    if auth_object == "admin"
      super
    else
      super - %w(id created_at)
    end
  end
end
