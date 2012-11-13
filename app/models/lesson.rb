class Lesson < ActiveRecord::Base
  attr_accessible :is_sublesson, :lesson, :position, :topic_id, :user_id
end
