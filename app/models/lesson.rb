class Lesson < ActiveRecord::Base
  attr_accessible :lesson, :position, :topic_id, :user_id
  #Validations
  validates_presence_of :lesson, :topic_id, :user_id

  #Relations
  belongs_to :topic
  belongs_to :user
  has_many :checkpoints
  has_many :summaries

  #Friendly ID
  extend FriendlyId
  friendly_id :lesson, :use => :slugged

  #Listing
  acts_as_list :scope => :topic

  include PgSearch
  pg_search_scope :search, against: [:lesson],
  using: {tsearch: {dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
    else
      scoped
    end
  end
end
