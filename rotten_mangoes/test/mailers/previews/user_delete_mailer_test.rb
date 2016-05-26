require 'test_helper'

class UserDeleteMailerTest < ActionMailer::TestCase

  def user_delete_email_preview
    UserDeleteMailer.delete_user_email(User.first)
  end


end
