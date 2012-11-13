class Summary < ActiveRecord::Base
  attr_accessible :lesson_id, :position, :summary
  #Validations
  validates_presence_of :lesson_id, :summary

  #Relations
  belongs_to :lesson

  #Friendly ID
  extend FriendlyId
  friendly_id :summary, use: :slugged

  #Listing
  acts_as_list scope: :lesson
end
