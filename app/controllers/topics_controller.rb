class TopicsController < ApplicationController
  before_filter :google_login, only: ["create","update", "import"]
  def google_login
    session = GoogleDrive.login(ENV["OL_GMAIL_USERNAME"], ENV["OL_GMAIL_PASSWORD"])
    @ws = session.spreadsheet_by_key(ENV["SPREADSHEET_KEY"]).worksheets[3]
  end

  def show
    @topic = Topic.find(params[:id])
    @lessons = @topic.lessons

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @topic }
    end
  end

  # GET /topics/1/edit
  def edit
    @topic = Topic.find(params[:id])
  end

  # POST /topics
  # POST /topics.json
  def create
    @topic = Topic.new(params[:topic])
    row = @ws.num_rows()+1

    respond_to do |format|
      if @topic.save
        @ws[row,1] = @topic.id
        @ws[row,2] = @topic.topic
        @ws[row,3] = @topic.subject.subject
        @ws[row,4] = @topic.seab_sub_topic.topic
        @ws[row,5] = @topic.description
        @ws.save()
        format.html { redirect_to @topic, notice: 'Topic was successfully created.' }
        format.json { render json: @topic, status: :created, location: @topic }
      else
        format.html { render action: "new" }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /topics/1
  # PUT /topics/1.json
  def update
    @topic = Topic.find(params[:id])
    row = @topic.id+1
    respond_to do |format|
      if @topic.update_attributes(params[:topic])
        @ws[row,2] = @topic.topic
        @ws[row,3] = @topic.subject.subject
        @ws[row,4] = @topic.seab_sub_topic.topic
        @ws[row,5] = @topic.description
        @ws.save()
        format.html { redirect_to @topic, notice: 'Topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /topics/1
  # DELETE /topics/1.json
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy

    respond_to do |format|
      format.html { redirect_to topics_url }
      format.json { head :no_content }
    end
  end

  def sort
    params[:topic].each_with_index do |id, index|
      Topic.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end

  def import
    Topic.import(@ws)
    redirect_to topics_url, notice: "Imported!"
  end
end
