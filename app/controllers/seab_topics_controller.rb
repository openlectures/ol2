class SeabTopicsController < ApplicationController
  before_filter :google_login, only: ["create","update","import"]
  def google_login
    session = GoogleDrive.login(ENV["OL_GMAIL_USERNAME"],ENV["OL_GMAIL_PASSWORD"])
    @ws = session.spreadsheet_by_key(ENV["SPREADSHEET_SEAB_TOPICS_KEY"]).worksheets[0]
  end

  # GET /seab_topics
  # GET /seab_topics.json
  def index
    @seab_topics = SeabTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seab_topics }
    end
  end

  # GET /seab_topics/1
  # GET /seab_topics/1.json
  def show
    @seab_topic = SeabTopic.find(params[:id])
    @seab_sub_topics = SeabSubTopic.all
    @seab_sub_topic = SeabSubTopic.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @seab_topic }
    end
  end

  # GET /seab_topics/new
  # GET /seab_topics/new.json
  def new
    @seab_topic = SeabTopic.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @seab_topic }
    end
  end

  # GET /seab_topics/1/edit
  def edit
    @seab_topic = SeabTopic.find(params[:id])
  end

  # POST /seab_topics
  # POST /seab_topics.json
  def create
    @seab_topic = SeabTopic.new(params[:seab_topic])
    row = @ws.num_rows() +1

    respond_to do |format|
      if @seab_topic.save
        @ws[row,1] = @seab_topic.id
        @ws[row,2] = @seab_topic.subject_id
        @ws[row,3] = @seab_topic.topic
        @ws[row,4] = @seab_topic.description
        @ws.save()
        format.html { redirect_to @seab_topic, notice: 'Seab topic was successfully created.' }
        format.json { render json: @seab_topic, status: :created, location: @seab_topic }
      else
        format.html { render action: "new" }
        format.json { render json: @seab_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seab_topics/1
  # PUT /seab_topics/1.json
  def update
    @seab_topic = SeabTopic.find(params[:id])

    respond_to do |format|
      if @seab_topic.update_attributes(params[:seab_topic])
        format.html { redirect_to @seab_topic, notice: 'Seab topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seab_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seab_topics/1
  # DELETE /seab_topics/1.json
  def destroy
    @seab_topic = SeabTopic.find(params[:id])
    @seab_topic.destroy

    respond_to do |format|
      format.html { redirect_to seab_topics_url }
      format.json { head :no_content }
    end
  end

  def display_topic
    @topic = SeabTopic.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def import
    SeabTopic.import(@ws)
    redirect_to root_url, notice: "Imported!"
  end
end
