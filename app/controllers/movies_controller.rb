class MoviesController < ApplicationController
  before_action :find_movie, only: [:show]
  before_action :load_support

  def index; end

  def show; end

  private

  def find_movie
    @movie = Movie.find_by id: params[:id]

    return if @movie.present?
    flash[:danger] = t "flash.movies.not_found"
    redirect_to root_path
  end

  def load_support
    @support = Supports::Movies.new movie: Movie.all, param: params
  end
end
