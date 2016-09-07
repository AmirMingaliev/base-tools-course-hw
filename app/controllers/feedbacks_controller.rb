class FeedbacksController < ApplicationController
  expose :feedback

  def new
  end

  def create
    result = Feedbacks::ValidateAndSend.call(feedback: feedback)

    if result.success?
      redirect_to new_feedback_path, notice: I18n.t("feedback.sended")
    else
      render "new"
    end
  end

  private

  def feedback_params
    params.require(:feedback).permit(:name, :email, :body)
  end
end
