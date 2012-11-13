class Questionanswer < ActiveRecord::Base
  attr_accessible :answer, :checkpoint_id, :question, :position
  #Validations
  validates_presence_of :answer, :question, :checkpoint_id

  #Relations
  belongs_to :checkpoint

  #Friendly ID
  extend FriendlyId
  friendly_id :question, use: :slugged

  #Listing
  acts_as_list scope: :checkpoint
end
