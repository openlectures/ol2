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

end
