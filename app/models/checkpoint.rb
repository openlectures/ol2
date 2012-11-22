class Checkpoint < ActiveRecord::Base
  attr_accessible :checkpoint, :description, :lesson_id, :objective, :position, :videourl
  #Validations
  validates_presence_of :checkpoint, :description, :lesson_id, :objective, :videourl
  
  #Relations
  belongs_to :lesson
  has_many :questionanswers
  
  #Friendly ID
  extend FriendlyId
  friendly_id :checkpoint, use: :slugged

  #Listing
  acts_as_list scope: :lesson

  def parsed_url
    @@video_regexp = [ /^(?:https?:\/\/)?(?:www\.)?youtube\.com(?:\/v\/|\/watch\?v=)([A-Za-z0-9_-]{11})/, 
                       /^(?:https?:\/\/)?(?:www\.)?youtu\.be\/([A-Za-z0-9_-]{11})/,
                       /^(?:https?:\/\/)?(?:www\.)?youtube\.com\/user\/[^\/]+\/?#(?:[^\/]+\/){1,4}([A-Za-z0-9_-]{11})/
                     ]
    def youtubeID
       return @@video_regexp.each { |m| return m.match(videourl)[1] unless m.nil? }
    end
    return "https://www.youtube.com/embed/"+youtubeID+"?rel=0&amp;theme=light&amp;color=white&amp;autoplay=0&amp;showinfo=0&amp;autohide=3&amp;vq=hd1080"
  end
end
