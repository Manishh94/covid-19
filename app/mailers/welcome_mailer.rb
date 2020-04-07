class WelcomeMailer < ApplicationMailer
  def sender(email, subject, body)
    @email = email
    @body = body
    @subject = subject
    mail(to: email, subject: @subject)
  end
end
