class UsrController < ApplicationController
  def manage
  end

  def create_item
  end

  def profile
  end

  def staff
    @staff = User.where("role = ?", "admin")
  end

  def manage_users
    @users = User.where("role = ?", "user")
  end
end
