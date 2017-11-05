class Supports::Movies
  attr_reader :movie

  def initialize movie
    @movie = movie
  end

  def movies_search
    search.result(distinct: true).page(@movie[:param][:page]).per(12)
  end

  def search
    search = Movie.ransack @movie[:param][:q]
    search.sorts = %w(realease_date\ desc) if search.sorts.empty?
    search
  end

  def reviews
    movie = find_movie
    movie.reviews.order("created_at desc").limit(5)
  end

  def rates
    movie = find_movie
    movie.rates.order("created_at desc").limit(5)
  end

  def find_movie
    params = @movie[:param]
    Movie.find_by id: params[:id]
  end

  def top_movies
    Movie.all.sort_by{|p| p.average_rate}.reverse.take(7)
  end

  def coming_movies
    Movie.where("realease_date > ?", Date.today).order("created_at desc").limit(7)
  end

  def types
    Type.all.sort_by{|p| p.count_movies}.reverse
  end

  def load_countries
    Country.order("name asc").map{|p| [I18n.t(p.name), p.id]}
  end

  def load_types
    Type.order("name asc").map{|p| [I18n.t(p.name), p.id]}
  end

  def suggest_movie
    SuggestMovie.new
  end
end
