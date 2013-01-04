class SubjectsController < ApplicationController
  before_filter :authenticate_user!, except: [:index,:show]
  before_filter :google_login, only: ["create","update","import"]

  def google_login
    session = GoogleDrive.login(ENV["OL_GMAIL_USERNAME"],ENV["OL_GMAIL_PASSWORD"])
    @ws = session.spreadsheet_by_key(ENV["SPREADSHEET_KEY"]).worksheets[0]
  end

  def index
    @subjects = Subject.order(:subject)

    respond_to do |format|
      format.html # index.html.erb
      format.csv { send_data @subjects.to_csv }
      format.json { render json: @subjects }
    end
  end

  def show
    @subject = Subject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @subject }
    end
  end

  def edit
    @subject = Subject.find(params[:id])
  end

  def create
    @subject = Subject.new(params[:subject])
    row = @ws.num_rows() + 1

    respond_to do |format|
      if @subject.save
        @ws[row,1] = @subject.id
        @ws[row,2] = @subject.subject
        @ws.save()
        format.html { redirect_to @subject, notice: 'Subject was successfully created.' }
        format.json { render json: @subject, status: :created, location: @subject }
      else
        format.html { render action: "new" }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @subject = Subject.find(params[:id])
    row_no = @subject.id+1
    respond_to do |format|
      if @subject.update_attributes(params[:subject])
        @ws[row_no,2] = @subject.subject
        @ws.save()
        format.html { redirect_to @subject, notice: 'Subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @subject = Subject.find(params[:id])
    @subject.destroy

    respond_to do |format|
      format.html { redirect_to subjects_url }
      format.json { head :no_content }
    end
  end

  def display_topic
    @topic = Topic.find(params[:id])
    respond_to do |format|
      format.js
    end
  end

  def import
    Subject.import(@ws)
    redirect_to subjects_url, notice: "Imported!"
  end
end
