class SeabSubTopicsController < ApplicationController
  # GET /seab_sub_topics
  # GET /seab_sub_topics.json
  def index
    @seab_sub_topics = SeabSubTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @seab_sub_topics }
    end
  end

  # GET /seab_sub_topics/1/edit
  def edit
    @seab_sub_topic = SeabSubTopic.find(params[:id])
  end

  # POST /seab_sub_topics
  # POST /seab_sub_topics.json
  def create
    @seab_sub_topic = SeabSubTopic.new(params[:seab_sub_topic])

    respond_to do |format|
      if @seab_sub_topic.save
        format.html { redirect_to @seab_sub_topic.seab_topic, notice: 'Seab sub topic was successfully created.' }
        format.json { render json: @seab_sub_topic, status: :created, location: @seab_sub_topic }
      else
        format.html { render action: "new" }
        format.json { render json: @seab_sub_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /seab_sub_topics/1
  # PUT /seab_sub_topics/1.json
  def update
    @seab_sub_topic = SeabSubTopic.find(params[:id])

    respond_to do |format|
      if @seab_sub_topic.update_attributes(params[:seab_sub_topic])
        format.html { redirect_to @seab_sub_topic, notice: 'Seab sub topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @seab_sub_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seab_sub_topics/1
  # DELETE /seab_sub_topics/1.json
  def destroy
    @seab_sub_topic = SeabSubTopic.find(params[:id])
    @seab_sub_topic.destroy

    respond_to do |format|
      format.html { redirect_to seab_sub_topics_url }
      format.json { head :no_content }
    end
  end
end
