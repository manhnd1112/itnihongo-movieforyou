class FeedbacksController < ApplicationController
  def create
    @feedback = Feedback.new
    if @feedback.update_attributes feedback_params
      flash[:success] = t "flash.feedbacks.success"
    else
      flash[:danger] = t "flash.destroy_fail"
    end
    redirect_to contact_path
  end

  private
  def feedback_params
    params.require(:feedback).permit :content, :name, :subject, :email
  end
end
