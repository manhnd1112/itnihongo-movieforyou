class SuggestMoviesController < ApplicationController
  include ApplicationHelper

  before_action :authenticate_user!, only: :create
  before_action only: :create do
    find_movie params[:movie_id]
  end

  def create
    suggest_movies = SuggestMovie
      .create_suggest_movie(suggest_movies_params, @movie, current_user.id)

    if suggest_movies
      users = []
      suggest_movies.each do |suggest_movie|
        users.push User.find suggest_movie.to_id
      end
      @supports = Supports::SuggestMovies.new movie: @movie,
        suggest_movies: suggest_movies, users: users
      respond_to do |f|
        partial = "suggest_movies/_modal_result_success"
        f.html{render partial, layout: false, locals: {supports: @supports}}
      end
    else
      flash[:danger] = "Failed"
    end
  end

  private
  def suggest_movies_params
    params.require(:suggest_movie).permit :from_id, :movie_id, :content, to_id: []
  end
end
