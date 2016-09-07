module Feedbacks
  class ValidateAndSend
    include Interactor

    delegate :feedback, to: :context

    def call
      context.fail! if feedback.invalid?

      FeedbackMailer.new_feedback(feedback).deliver_now
    end
  end
end
