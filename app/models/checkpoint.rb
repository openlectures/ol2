class Checkpoint < ActiveRecord::Base
  attr_accessible :checkpoint, :description, :lesson_id, :objective, :position, :videourl
  #Validations
  validates_presence_of :checkpoint, :description, :lesson_id, :objective, :videourl

  #Relations
  belongs_to :lesson
  has_many :questionanswers

  #Friendly ID
  extend FriendlyId
  friendly_id :checkpoint, :use => :slugged

  #Listing
  acts_as_list :scope => :lesson

  def parsed_url
    @@video_regexp =/(?:https?:\/\/)?(?:www\.)?youtu(?:\.be|be\.com)\/(?:watch\?v=)?(\w{10,})/
    youtubeID = @@video_regexp.match(videourl)[1]
    return "https://www.youtube.com/embed/"+youtubeID+"?rel=0&amp;theme=light&amp;color=white&amp;autoplay=0&amp;showinfo=0&amp;autohide=3&amp;vq=hd1080&?enablejsapi=1"
  end

  # def thumb_url
  #   return "http://img.youtube.com/vi/"+youtubeID+"/mqdefault.jpg"
  # end

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      checkpoint = find_by_id(i) || new
      checkpoint.checkpoint = ws[i+1,2]
      checkpoint.lesson_id = ws[i+1,3]
      checkpoint.description = ws[i+1,4]
      checkpoint.videourl = ws[i+1,5]
      checkpoint.objective = ws[i+1,6]
      checkpoint.save!
    end
  end
end
