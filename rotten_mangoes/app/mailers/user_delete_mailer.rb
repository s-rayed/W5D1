class UserDeleteMailer < ActionMailer::Base
  default from: "from@example.com"

  def admin_delete_user_email(user)
    @user = user
    mail(to: @user.email, subject: 'An Admin has deleted your account')
  end
end
