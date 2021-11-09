class InviteMailer < ApplicationMailer
 default from: 'notifications@example.com'

  def send_email(email)
    pp email
    pp '*' * 100
    @email = email
    @url = "www.google.com.co"
    mail(to: email, subject: 'Invite to join to Serenety App movil..!')
  end
end
