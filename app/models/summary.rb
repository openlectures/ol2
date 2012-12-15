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

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      summary = find_by_id(i) || new
      summary.summary = ws[i+1,2]
      summary.lesson_id = ws[i+1,3]
      summary.save!
    end
  end
end
