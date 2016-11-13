class AppMailer < ActionMailer::Base
  def send_welcome_email(User)
    @user = user
    mail to: user.email, from: "albertohtesta@gmail.com", subject: "Welcome to Myflix"
  end
end