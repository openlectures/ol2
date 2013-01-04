class UsrController < ApplicationController
  def manage
  end

  def create_item
    @subject = Subject.new
    @seab_topic = SeabTopic.new
    @seab_sub_topic = SeabSubTopic.new
    @topic = Topic.new
    @lesson = Lesson.new
    @checkpoint = Checkpoint.new
    @questionanswer = Questionanswer.new
  end

  def profile
  end

  def staff
    @staff = User.where("role = ?", "admin")
    @users = User.where("role = ?", "user")
  end

  def manage_users
    @users = User.where("role = ?", "user")
  end
end
