class MoviesController < ApplicationController
  before_action :find_movie, only: [:index, :show]
  
  def index
  end

  def show
    @reviews = @movie.reviews.all
  end

  private

  def find_movie
    @movie = Movie.find_by id: params[:id]

    return if @movie.present?
    flash[:danger] = t "flash.movies.not_found"
    redirect_to root_path
  end
end
