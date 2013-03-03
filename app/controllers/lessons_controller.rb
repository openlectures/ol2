class LessonsController < ApplicationController
  before_filter :authenticate_user!, except: :show
  before_filter :google_login, only: ["create","update","import"]

  def google_login
    session = GoogleDrive.login(ENV["OL_GMAIL_USERNAME"],ENV["OL_GMAIL_PASSWORD"])
    @ws = session.spreadsheet_by_key(ENV["SPREADSHEET_KEY"]).worksheets[4]
  end

  def show
    @lesson = Lesson.find(params[:id])
    @email = @lesson.user.email
    respond_to do |format|
      format.html {render layout: "reveal"}
      # format.html {render layout: "reveal"}
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
        @ws[row,3] = @lesson.topic.topic
        @ws[row,4] = @lesson.user_id
        @ws[row,5] = @lesson.position
        @ws.save()
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
        @ws[row,3] = @lesson.topic.topic
        @ws[row,4] = @lesson.user_id
        @ws[row,5] = @lesson.position
        @ws.save()
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
    redirect_to update_url, notice: "Imported!"
  end

  def report_error
  UserMailer.welcome_message("jethrokuan95@gmail.com").deliver()
    # UserMailer.report_error(params[:error],params[:email]).deliver()
    redirect_to(:back)
  end
end
