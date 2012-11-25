class SeabTopic < ActiveRecord::Base
  attr_accessible :description, :position, :topic
  #Validations
  validates_presence_of :topic, :description

  #Relations
  belongs_to :subject
  has_many :topics, :order => :position
  #Listing
  acts_as_list :scope => :subject
end
