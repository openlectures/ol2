class UserMailer < ActionMailer::Base
  default :from => "openlecturessg@gmail.com"
  def welcome_message(user)
    mail :to => user.email, :subject => "Welcome #{user.email} :-)"
  end
end
