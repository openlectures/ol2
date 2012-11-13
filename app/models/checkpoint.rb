class Checkpoint < ActiveRecord::Base
  attr_accessible :checkpoint, :description, :lesson_id, :objective, :position, :videourl
  #Validations
  validates_presence_of :checkpoint, :description, :lesson_id, :objective, :videourl
  
  #Relations
  belongs_to :lesson
  has_many :questionanswers
  
  #Friendly ID
  extend FriendlyId
  friendly_id :checkpoint, use: :slugged

  #Listing
  acts_as_list scope: :lesson
end
