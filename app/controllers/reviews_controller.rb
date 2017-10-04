class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :find_review, only: [:show, :edit, :update, :destroy]
  before_action :load_movies

  def show
    @top_reviews = Review.all.order("created_at desc").limit(3)
    @comment = Comment.new
    @comments = @review.comments.page(params[:page]).per(2)
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new review_params.merge user_id: current_user.id
    if @review.save
      flash[:success] = t "flash.reviews.create_success"
      redirect_to user_all_reviews_path(current_user)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @review.update_attributes review_params.merge user_id: current_user.id
      flash[:success] = t "flash.reviews.update_success"
      redirect_to user_all_reviews_path(current_user)
    else
      render :edit
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
    params.require(:review).permit :title, :content, :movie_id, :user_id
  end

  def find_review
    @review = Review.find_by id: params[:id]

    return if @review.present?
    flash[:danger] = t "flash.reviews.not_found"
    redirect_to root_path
  end

  def load_movies
    @movies = Movie.all.map{|p| [p.name, p.id]}
  end
end
