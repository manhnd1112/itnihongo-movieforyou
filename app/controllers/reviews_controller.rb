class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  before_action :load_support

  def index; end

  def show; end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new review_params.merge user_id: current_user.id
    if @review.save
      flash[:success] = t "flash.reviews.create_success"
      redirect_to user_all_reviews_path(current_user)
    else
      redirect_to new_review_path
    end
  end

  def edit; end

  def update
    if @review.update_attributes review_params.merge user_id: current_user.id
      flash[:success] = t "flash.reviews.update_success"
      redirect_to user_all_reviews_path(current_user)
    else
      redirect_to edit_review_path(@review)
    end
  end

  def destroy
    if @review.destroy
      flash[:success] = t "flash.reviews.destroy_success"
    else
      flash[:danger] = t "flash.destroy_fail"
    end
    redirect_to user_all_reviews_path(current_user)
  end

  private

  def review_params
    params.require(:review).permit :title, :content, :movie_id, :user_id,
      photos_attributes: [:id, :url, :url_cache, :_destroy]
  end

  def find_review
    @review = Review.find_by id: params[:id]

    return if @review.present?
    flash[:danger] = t "flash.reviews.not_found"
    redirect_to root_path
  end

  def load_support
    @support = Supports::Reviews.new review: Review.all, param: params
  end
end
