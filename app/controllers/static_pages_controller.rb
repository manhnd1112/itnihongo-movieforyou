class StaticPagesController < ApplicationController
	
  def show
    @movies = Movie.paginate(page: params[:page]).order('created_at desc')
  end

  # Funtion logic
end
