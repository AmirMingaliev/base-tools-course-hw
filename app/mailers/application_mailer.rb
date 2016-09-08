class ApplicationMailer < ActionMailer::Base
  default to: ENV["EMAIL_TO"],
          from: "from@example.com"

  layout "mailer"
end
