class PagesController < ApplicationController
  def index
    if user_signed_in?
        redirect_to manage_path
    end
    @subjects = Subject.all
  end

  def contact
  end

  def opportunities
  end

  def partners
  end

  def presskit
  end

  def team
  end
  
  def send_email
    UserMailer.welcome_message(current_user).deliver

    render text: "Done"
  end
end
