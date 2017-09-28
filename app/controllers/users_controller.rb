class UsersController < ApplicationController
  before_action :find_user

  def show
    per_page = params[:page]
    @reviews = current_user.reviews.page(per_page).per(4)
    @bookmarks = current_user.bookmarks.page(per_page).per(4)
  end

  private

  def find_user
    @user = User.find_by id: params[:id]

    return if @user.present?
    flash[:danger] = t "flash.user.not_found"
    redirect_to root_path
  end
end
