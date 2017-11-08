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

  def load_countries
    Country.order("name asc").map{|p| [I18n.t(p.name), p.id]}
  end

  def load_types
    Type.order("name asc").map{|p| [I18n.t(p.name), p.id]}
  end

  def load_actors
    Actor.order("name asc").map{|p| [p.name, p.id]}
  end

  def find_actor
    Actor.find_by id: @params[:param][:actor_id]
  end
end
