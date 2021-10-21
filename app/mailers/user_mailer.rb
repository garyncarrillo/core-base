class UserMailer < ApplicationMailer
   default from: 'notifications@example.com'

  def welcome_email(user, uri)
    @user = user
    @url  = uri
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end
end
