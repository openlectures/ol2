class SeabTopic < ActiveRecord::Base
  attr_accessible :description, :position, :topic, :subject_id
  #Validations
  validates_presence_of :topic, :description, :subject_id

  #Relations
  belongs_to :subject
  has_many :seab_sub_topics, :order => :position
  #Listing
  acts_as_list :scope => :subject

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      seab_topic = find_by_id(i) || new
      seab_topic.subject = Subject.find_by_subject(ws[i+1,2])
      seab_topic.topic = ws[i+1,3]
      seab_topic.description = ws[i+1,4]
      seab_topic.save!
    end
  end
end
