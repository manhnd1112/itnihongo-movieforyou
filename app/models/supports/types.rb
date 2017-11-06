class Supports::Types
  def initialize arg
    @params = arg
  end

  def types
    @params[:type]
  end

  def movies_search
    search.result(distinct: true).page(@params[:param][:page]).per(12)
  end

  def search
    params = @params[:param]
    type = Type.find_by id: params[:id]
    search= type.movies.ransack params[:q]
    search.sorts = %w(realease_date\ desc) if search.sorts.empty?
    search
  end

  def movies
    Movie.all.map{|p| [p.name, p.id]}
  end

  def load_countries
    Country.order("name asc").map{|p| [I18n.t(p.name), p.id]}
  end

  def load_types
    Type.order("name asc").map{|p| [I18n.t(p.name), p.id]}
  end
end
