class UsersController < ApplicationController
  before_action :find_user

  def show
    per_page = params[:page]
    type = params[:type]
    @reviews = @user.reviews.order("created_at desc").page(per_page).per(4)
    @bookmarks = @user.bookmarks.order("created_at desc").page(per_page).per(4)
    case type
      when "review"
        @reviews
      when "bookmark"
        @bookmarks
    end
  end

  def reviews
    @reviews = @user.reviews.order("created_at desc")
      .page(params[:page]).per(10)
  end
  
  def bookmarks
    @bookmarks = @user.bookmarks.order("created_at desc")
      .page(params[:page]).per(10)
  end

  private

  def find_user
    @user = User.find_by id: params[:id]

    return if @user.present?
    flash[:danger] = t "flash.users.not_found"
    redirect_to root_path
  end
end
