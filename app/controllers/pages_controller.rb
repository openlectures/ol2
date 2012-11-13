class PagesController < ApplicationController
  def index
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
