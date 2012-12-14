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

  def self.import(url)
    response = Csvi.get_csv(url)
    csv = CSV.parse(response, headers: true)
    csv.each do |row|
      subject = find_by_id(row["id"]) || new
      subject.attributes = row.to_hash.slice(*accessible_attributes)
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
