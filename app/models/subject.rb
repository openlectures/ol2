class Subject < ActiveRecord::Base
  attr_accessible :subject
  #Validations
  validates_presence_of :subject, :slug

  #Relations
  has_many :topics
  has_many :lessons, through: :topics
  has_many :checkpoints, through: :lessons

  #Friendly ID
  extend FriendlyId
  friendly_id :subject, use: :slugged
end
