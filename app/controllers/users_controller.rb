class UsersController < ApplicationController
  before_action :find_user

  def show
    per_page = params[:page]
    @reviews = @user.reviews.page(per_page).per(4)
    @bookmarks = @user.bookmarks.page(per_page).per(4)
  end

  def reviews
    @reviews = @user.reviews.page(params[:page]).per(8)
  end

  private

  def find_user
    @user = User.find_by id: params[:id]

    return if @user.present?
    flash[:danger] = t "flash.users.not_found"
    redirect_to root_path
  end
end
