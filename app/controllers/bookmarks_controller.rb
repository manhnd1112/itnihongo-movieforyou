class BookmarksController < ApplicationController
  before_action :authenticate_user!
  before_action :find_movie, only: [:create, :destroy]
  before_action :find_bookmark, only: :destroy

  def create
    @bookmark = 
      if @movie
        @movie.bookmarks.new bookmark_params
      else
        Bookmark.new bookmark_params
      end
    @bookmark.user_id = current_user.id
    if @bookmark.save
      flash[:success] = t "flash.bookmarks.create_success"
    else
      flash[:danger] = t "flash.destroy_fail"
    end
  end

  def destroy
    if @bookmark.destroy
      flash[:success] = t "flash.bookmarks.destroy_success"
    else
      flash[:danger] = t "flash.destroy_fail"
    end
  end

  private
  def bookmark_params
    params.require(:bookmark).permit :user_id, :movie_id
  end

  def find_movie
    @movie = Movie.find_by id: params[:movie_id]
    unless @movie
      flash[:danger] = "movie not found"
    end
  end

  def find_bookmark
    @bookmark = current_user.bookmarks.find_by id: params[:id]
    unless @bookmark
      flash[:danger] = "bookmark not found"
    end
  end
end
