class SeabTopic < ActiveRecord::Base
  attr_accessible :description, :position, :topic, :subject_id
  #Validations
  validates_presence_of :topic, :description, :subject_id

  #Relations
  belongs_to :subject
  has_many :seab_sub_topics, :order => :position
  #Listing
  acts_as_list :scope => :subject
end
