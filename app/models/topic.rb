class Topic < ActiveRecord::Base
  attr_accessible :description, :position, :subject_id, :topic, :seab_sub_topic_id
  #Validations
  validates_presence_of :topic, :subject_id

  #Relations
  belongs_to :subject
  belongs_to :seab_sub_topic
  has_many :lessons, order: :position
  has_many :checkpoints, :through => :lessons

  #Friendly ID
  extend FriendlyId
  friendly_id :topic, use: :slugged

  #Listing
  acts_as_list :scope => :seab_sub_topic

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      topic = find_by_id(i) || new
      topic.topic = ws[i+1,2]
      topic.subject = Subject.find_by_subject(ws[i+1,3])
      topic.seab_sub_topic_id = ws[i+1,4]
      topic.description=ws[i+1,5]
      topic.save!
    end
  end
end
