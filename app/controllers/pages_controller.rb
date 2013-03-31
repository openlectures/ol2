class PagesController < ApplicationController
  def search
    @items = PgSearch.multisearch(params[:query])

    respond_to do |format|
      format.html # index.html.erb
    end
  end

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

  def report_error
    UserMailer.report_error(current_user).deliver
    redirect_to(:back)
  end
end
