class UserMailer < ApplicationMailer
  default from: "no-reply@jungle.com"
  def receipt_email
    @user = params[:user]
    @url  = 'http://www.jungle.com'
    mail(to: @user.email, subject: 'Thanks for your jungle.com purchase!')
  end
end

end
