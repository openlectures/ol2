class PagesController < ApplicationController
  def index
    if user_signed_in?
      if current_user.role == "admin"
        redirect_to manage_path
      end
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
    @thumbs = Dir.glob('app/assets/images/profile/*')
  end

end
