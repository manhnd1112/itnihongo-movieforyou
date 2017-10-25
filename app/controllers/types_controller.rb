class TypesController < ApplicationController
  before_action :find_type, only: [:show]
  before_action :load_support

  def index; end

  def show; end

  private

  def find_type
    @type = Type.find_by id: params[:id]

    return if @type.present?
    flash[:danger] = t "flash.types.not_found"
    redirect_to root_path
  end

  def load_support
    @support = Supports::Types.new type: Type.all, param: params
  end
end
