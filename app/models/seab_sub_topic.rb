class SeabSubTopic < ActiveRecord::Base
  attr_accessible :seab_topic_id, :topic

  #Validations
  validates_presence_of :seab_topic_id, :topic

  #Relations
  belongs_to :seab_topic
  has_many :topics, :order => :position

  #Listing
  acts_as_list :scope => :seab_topic
end
