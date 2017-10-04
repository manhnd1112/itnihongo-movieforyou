class StaticPagesController < ApplicationController
  def show
    @movies = Movie.all.order("realease_date desc").limit(10)
    @reviews = Review.all.order("created_at desc").limit(10)
  end
end
