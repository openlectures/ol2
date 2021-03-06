class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role, :given_name, :surname, :school_email, :grad_year, :school, :title, :phone, :avatar

  #Avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }


  #Relations
  has_many :lessons

  #Methods and Overrides
  def fullname 
    return given_name + " " + surname
  end

  def add_omniauth(auth)
    update_attributes(provider: auth.provider, uid: auth.uid)
  end

  def self.from_omniauth(auth)
    where(auth.slice(:email)).first_or_create do |user|
    # where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.given_name = auth.info.first_name
      user.surname = auth.info.last_name
      user.email = auth.info.email
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end
end
