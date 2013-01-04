class SeabSubTopic < ActiveRecord::Base
  attr_accessible :seab_topic_id, :topic

  #Validations
  validates_presence_of :seab_topic_id, :topic

  #Relations
  belongs_to :seab_topic
  has_many :topics, :order => :position

  #Listing
  acts_as_list :scope => :seab_topic

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      subtopic = find_by_id(i) || new
      subtopic.topic = ws[i+1,2]
      subtopic.seab_topic = SeabTopic.find_by_topic(ws[i+1,3])
      subtopic.save!
    end
  end
end
