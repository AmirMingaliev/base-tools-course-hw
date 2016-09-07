class ApplicationMailer < ActionMailer::Base
  default to: ENV["email_to"],
          from: "from@example.com"

  layout "mailer"
end
