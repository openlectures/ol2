class UsrController < ApplicationController
  before_filter :authenticate_user!

  def create_item
    @subject = Subject.new
    @seab_topic = SeabTopic.new
    @seab_sub_topic = SeabSubTopic.new
    @topic = Topic.new
    @lesson = Lesson.new
    @checkpoint = Checkpoint.new
  end

  def profile
  end

  def staff
    @users = User.all
  end
end
