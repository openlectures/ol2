class Checkpoint < ActiveRecord::Base
  attr_accessible :checkpoint, :description, :lesson_id, :objective, :position, :videourl, :question, :answer
  #Validations
  validates_presence_of :checkpoint, :description, :lesson_id, :objective, :videourl, :question, :answer

  #Relations
  belongs_to :lesson

  #Friendly ID
  extend FriendlyId
  friendly_id :checkpoint, :use => :slugged

  #Listing
  acts_as_list :scope => :lesson

  def youtubeID
    @@video_regexp = /[v=|\/]([\w-]+)(&.+)?$/
    youtubeID = @@video_regexp.match(videourl)[1]
    return youtubeID
  end

  def parsed_url
    return "https://www.youtube.com/embed/"+youtubeID+"?rel=0&amp;theme=light&amp;color=white&amp;autoplay=0&amp;showinfo=0&amp;autohide=3&amp;vq=hd1080&?enablejsapi=1"
  end

  def thumb_url
    return "https://img.youtube.com/vi/"+youtubeID+"/maxresdefault.jpg"
  end

  def self.import(ws)
    rows = ws.num_rows()
    for i in 1..rows-1 do
      checkpoint = find_by_id(i) || new
      checkpoint.checkpoint = ws[i+1,2]
      checkpoint.lesson = Lesson.find_by_lesson(ws[i+1,3])
      checkpoint.description = ws[i+1,4]
      checkpoint.videourl = ws[i+1,5]
      checkpoint.objective = ws[i+1,6]
      checkpoint.question = ws[i+1,7]
      checkpoint.answer=ws[i+1,8]
      checkpoint.position=ws[i+1,9]
      checkpoint.save!
    end
  end
end
