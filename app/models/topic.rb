class Topic < ActiveRecord::Base
  attr_accessible :description, :position, :subject_id, :topic
  #Validations
  validates_presence_of :topic, :subject_id

  #Relations
  belongs_to :subject
  has_many :lessons, order: :position
  
  #Friendly ID
  extend FriendlyId
  friendly_id :topic, use: :slugged

  #Listing
  acts_as_list
end
