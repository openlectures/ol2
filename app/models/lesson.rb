class Lesson < ActiveRecord::Base
  attr_accessible :lesson, :position, :topic_id, :user_id
  #Validations
  validates_presence_of :lesson, :topic_id, :user_id

  #Relations
  belongs_to :topic
  belongs_to :user
  has_many :checkpoints
  has_many :summaries

  delegate :subject, :to => :topic, :allow_nil => true

  #Friendly ID
  extend FriendlyId
  friendly_id :lesson, :use => :slugged

  #Listing
  acts_as_list :scope => :topic

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      lesson = find_by_id(i) || new
      lesson.lesson = ws[i+1,2]
      lesson.topic = Topic.find_by_topic(ws[i+1,3])
      lesson.user_id = ws[i+1,4]
      lesson.save!
    end
  end

  include PgSearch
  multisearchable :against => [:lesson],
  using: {tsearch: {dictionary: "english"}}
end
