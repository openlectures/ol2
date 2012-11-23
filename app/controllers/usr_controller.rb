class UsrController < ApplicationController
  def manage
  end

  def profile
  end

  def staff
    @staff = User.where("role = ? OR role = ?", "admin", "lecturer")
  end

  def manage_users
    @users = User.where("role = ?", "user")
    @staff = User.where("role = ? OR role = ?", "admin", "lecturer")
  end
end
