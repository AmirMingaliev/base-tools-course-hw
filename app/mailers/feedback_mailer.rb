class FeedbackMailer < ApplicationMailer
  def new_feedback(feedback)
    @feedback = feedback

    mail(subject: I18n.t("mailer.feedback.subject", name: feedback.name))
  end
end
