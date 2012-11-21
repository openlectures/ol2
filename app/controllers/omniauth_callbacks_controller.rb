class OmniauthCallbacksController < ApplicationController
  def all
    # raise request.env["omniauth.auth"].to_yaml
    if user_signed_in?
      current_user.add_omniauth(request.env["omniauth.auth"])
      flash.notice = "Added Provider!"
      redirect_to root_path
    else
      user = User.from_omniauth(request.env["omniauth.auth"])
      if user.persisted?
        flash.notice = "Signed in!"
        sign_in_and_redirect user
      else
        session["devise.user_attributes"] = user.attributes
        redirect_to new_user_registration_url
      end
    end
  end
  alias_method :facebook, :all
end
