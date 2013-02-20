class UserMailer < ActionMailer::Base
  default :from => "openlecturessg@gmail.com"
  def report_error(error,email)
    @error = error;
    @email = email;
    mail :to => "jethrokuan95@gmail.com", :subject => "Error Reported!"
  end
  def welcome_message(email)
    mail :to => email, :subject => "Welcome #{email} :-)"
  end
end
