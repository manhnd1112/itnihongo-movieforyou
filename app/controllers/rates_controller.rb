class RatesController < ApplicationController
  before_action :authenticate_user!
  before_action :find_movie, only: [:create]

  def create
    rate =  if @movie
      @movie.rates.new rate_params
    else
      Rate.new rate_params
    end
    rate.user_id = current_user.id
    rate.save
  end

  private
  def find_movie
    @movie = Movie.find_by id: params[:movie_id]
    @rate = @movie.rates.find_by user_id: current_user.id

    @rate.destroy if @rate
  end

  def rate_params
    params.require(:rate).permit :score, :message
  end
end
