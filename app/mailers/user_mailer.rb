class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"

  def receipt_email(user, order)
    @user = user
    @order = order
    @url  = 'http://www.jungle.com'
  
    mail(to: @user.email, subject: 'Thanks for your jungle.com purchase!')

  end
end
