class Subject < ActiveRecord::Base
  attr_accessible :subject
  #Validations
  validates_presence_of :subject, :slug

  #Friendly ID
  extend FriendlyId
  friendly_id :subject, use: :slugged
end
