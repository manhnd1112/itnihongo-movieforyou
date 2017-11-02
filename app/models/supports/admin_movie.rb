class Supports::AdminMovie
  def initialize arg
    @params = arg
  end

  def movies
    @params[:movie]
  end

  def movies_search
    search.result.page(@params[:param][:page]).per 10
  end

  def search
    search = Movie.ransack @params[:param][:q]
    search.sorts = %w(created_at\ asc) if search.sorts.empty?
    search
  end

  def countries
    Country.all.map{|p| [p.name, p.id]}
  end

  def types
    Type.all
  end

  def actors
    Actor.all
  end

  def find_actor
    Actor.find_by id: @params[:param][:actor_id]
  end
end
