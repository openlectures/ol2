class LessonsController < ApplicationController
  before_filter :google_login, only: ["create","update","import"]

  def google_login
    session = GoogleDrive.login(ENV["OL_GMAIL_USERNAME"],ENV["OL_GMAIL_PASSWORD"])
    @ws = session.spreadsheet_by_key(ENV["SPREADSHEET_LESSONS_KEY"]).worksheets[0]
  end

  # GET /lessons
  # GET /lessons.json
  def index
    @lessons = Lesson.text_search(params[:query])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lessons }
    end
  end

  # GET /lessons/1
  # GET /lessons/1.json
  def show
    @lesson = Lesson.find(params[:id])

    respond_to do |format|
      format.html {render layout: "reveal"}
      # format.html {render layout: "reveal"}
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/new
  # GET /lessons/new.json
  def new
    @lesson = Lesson.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lesson }
    end
  end

  # GET /lessons/1/edit
  def edit
    @lesson = Lesson.find(params[:id])
  end

  # POST /lessons
  # POST /lessons.json
  def create
    @lesson = Lesson.new(params[:lesson])
    row = @ws.num_rows()+1

    respond_to do |format|
      if @lesson.save
        @ws[row,1] = @lesson.id
        @ws[row,2] = @lesson.lesson
        @ws[row,3] = @lesson.topic_id
        @ws[row,4] = @lesson.user_id
        @ws.save!
        format.html { redirect_to @lesson, notice: 'Lesson was successfully created.' }
        format.json { render json: @lesson, status: :created, location: @lesson }
      else
        format.html { render action: "new" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lessons/1
  # PUT /lessons/1.json
  def update
    @lesson = Lesson.find(params[:id])
    row = @lesson.id+1
    respond_to do |format|
      if @lesson.update_attributes(params[:lesson])
        @ws[row,2] = @lesson.lesson
        @ws[row,3] = @lesson.topic_id
        @ws[row,4] = @lesson.user_id
        @ws.save!
        format.html { redirect_to @lesson, notice: 'Lesson was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lesson.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lessons/1
  # DELETE /lessons/1.json
  def destroy
    @lesson = Lesson.find(params[:id])
    @lesson.destroy

    respond_to do |format|
      format.html { redirect_to lessons_url }
      format.json { head :no_content }
    end
  end

  def sort
    params[:lesson].each_with_index do |id, index|
      Lesson.update_all({position: index+1}, {id: id})
    end
    render nothing: true
  end

  def import
    Lesson.import(@ws)
    redirect_to lessons_url, notice: "Imported!"
  end
end
