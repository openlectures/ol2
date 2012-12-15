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

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      qna = find_by_id(i) || new
      qna.question = ws[i+1,2]
      qna.answer = ws[i+1,3]
      qna.checkpoint_id = ws[i+1,4]
      qna.save!
    end
  end
end
