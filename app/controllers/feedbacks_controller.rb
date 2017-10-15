class FeedbacksController < ApplicationController
  def new; end

  def create
    feedback = Feedback.new

    return if feedback.update_attributes feedback_params
    flash[:danger] = t "feedback.danger"
  end

  def update
    feedback = find_feedback
    update_feedback = feedback.update_attributes state: "canceled"
    flash[:danger] = t "borrow.destroy.fail" unless update_feedback
  end

  private
  def feedback_params
    params.require(:feedback).permit :content, :name, :subject, :email
  end

  def find_feedback
    Feedback.find_by id: params[:id]
  end
end
