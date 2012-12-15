class Subject < ActiveRecord::Base
  attr_accessible :subject
  #Validations
  validates_presence_of :subject, :slug
  #Relations
  has_many :seab_topics
  has_many :topics
  has_many :lessons, through: :topics
  has_many :checkpoints, through: :lessons

  #Friendly ID
  extend FriendlyId
  friendly_id :subject, use: :slugged

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      subject = find_by_id(i) || new
      subject.subject = ws[i+1,2]
      subject.save!
    end
  end

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |subject|
        csv << subject.attributes.values_at(*column_names)
      end
    end
  end
end
