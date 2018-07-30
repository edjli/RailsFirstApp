class UserMailer < ApplicationMailer
  default from: "flyingpawns@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
       to: 'flyingpawns@gmail.com',
       subject: "A new contact form message from #{name}")
  end
end
