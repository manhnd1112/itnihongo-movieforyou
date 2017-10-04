class StaticPagesController < ApplicationController
  def show
    @movies = Movie.order('created_at desc').page(params[:page]).per(6)
  end
end
