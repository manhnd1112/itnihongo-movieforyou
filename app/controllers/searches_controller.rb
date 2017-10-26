class SearchesController < ApplicationController
  def index
    q = params[:search]
    @movies = Movie.search(name_or_description_cont: q).result(distinct: true)
    @reviews = Review.search(title_or_content_cont: q).result(distinct: true)
    @actors = Actor.search(name_cont: q).result(distinct: true)
    @items = @movies + @reviews + @actors
    respond_to do |format|
      format.js
      format.html
    end
  end
end
