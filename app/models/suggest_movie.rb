class SuggestMovie < ApplicationRecord
  belongs_to :movie

  class << self
    def create_suggest_movie suggest_movies_params, movie, from_id
      ActiveRecord::Base.transaction do
        to_ids = suggest_movies_params[:to_id].reject &:blank?
        @suggest_movies = []
        to_ids.each do |to_id|
          @suggest_movie = SuggestMovie.create! movie_id: movie.id,
            from_id: from_id, to_id: to_id,
            content: suggest_movies_params[:content]
          @suggest_movies.push @suggest_movie
        end
      end
      return @suggest_movies if @suggest_movie.save
      nil
    end
  end
end
