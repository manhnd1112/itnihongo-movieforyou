class Admin::MoviesController < AdminController
  before_action :find_movie, only: [:show, :edit, :update, :destroy]
  before_action :load_support

  def index; end

  def show; end

  def new
    @movie = Movie.new
    @movie.movie_actors.build.build_actor
  end

  def create
    @movie = Movie.new movie_params
    if @movie.save
      flash[:success] = t "flash.movies.create_success"
      redirect_to admin_movie_path @movie
    else
      render :new
    end
  end

  def edit; end

  def update
    if @movie.update_attributes movie_params
      flash[:success] = t "flash.movies.update_success"
      redirect_to admin_movie_path @movie
    else
      render :edit
    end
  end

  def destroy
    actor = @support.find_actor
    movie_actor = actor.movies
    if actor
      if (movie_actor.include? @movie) && (movie_actor.delete @movie)
        flash[:success] = t "flash.movies.destroy_success"
      else
        flash[:danger] = t "flash.movies.destroy_success"
      end
    else
      if @movie.destroy
        flash[:success] = t "flash.movies.destroy_success"
      else
        flash[:danger] = t "flash.movies.destroy_success"
      end
      redirect_back fallback_location: admin_movies_path
    end
  end

  private
  def movie_params
    params.require(:movie).permit :name, :producer, :director, :realease_date,
      :imdb, :description, :country_id, actor_ids: [], type_ids: [],
      movie_actors_attributes: [:id, :actor_id, :_destroy,
      actor_attributes: [:id, :name]]
  end

  def find_movie
    @movie = Movie.find_by id: params[:id]

    return if @movie
    flash[:danger] = t "flash.movies.not_found"
    redirect_to admin_movies_path
  end

  def load_support
    @support = Supports::AdminMovie.new movie: Movie.all, param: params
  end
end
