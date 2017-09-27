class StaticPagesController < ApplicationController

	def home
		
	end

  def show
  	@movies = Movie.paginate(page: params[:page], per_page: 12).order('created_at desc')
  end

  # Funtion logic
end
