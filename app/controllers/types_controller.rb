class TypesController < ApplicationController
  before_action :find_type, only: [:show]
  before_action :load_support, only: [:show]

  def index; end

  def show
    @search = @type.movies.ransack(params[:q])
    @search.sorts = %w("name\ asc") if @search.sorts.empty?
    @movies = @search.result.order("realease_date desc").page(params[:page]).per(12)
  end

  private

  def find_type
    @type = Type.find_by id: params[:id]

    return if @type.present?
    flash[:danger] = t "flash.types.not_found"
    redirect_to root_path
  end

  def load_support
    @support = Supports::Movies.new @type
  end
end
