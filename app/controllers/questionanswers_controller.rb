class QuestionanswersController < ApplicationController
  before_filter :google_login, only: ["create","update","import"]

  def google_login
    session = GoogleDrive.login(ENV["OL_GMAIL_USERNAME"],ENV["OL_GMAIL_PASSWORD"])
    @ws = session.spreadsheet_by_key(ENV["SPREADSHEET_KEY"]).worksheets[6]
  end

  # GET /questionanswers
  # GET /questionanswers.json
  def index
    @questionanswers = Questionanswer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @questionanswers }
    end
  end

  # GET /questionanswers/1
  # GET /questionanswers/1.json
  def show
    @questionanswer = Questionanswer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @questionanswer }
    end
  end

  # GET /questionanswers/new
  # GET /questionanswers/new.json
  def new
    @questionanswer = Questionanswer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @questionanswer }
    end
  end

  # GET /questionanswers/1/edit
  def edit
    @questionanswer = Questionanswer.find(params[:id])
  end

  # POST /questionanswers
  # POST /questionanswers.json
  def create
    @questionanswer = Questionanswer.new(params[:questionanswer])
    row = @ws.num_rows()+1

    respond_to do |format|
      if @questionanswer.save
        @ws[row,1] = @questionanswer.id
        @ws[row,2] = @questionanswer.question
        @ws[row,3] = @questionanswer.answer
        @ws[row,4] = @questionanswer.checkpoint_id
        @ws.save()
        format.html { redirect_to @questionanswer, notice: 'Questionanswer was successfully created.' }
        format.json { render json: @questionanswer, status: :created, location: @questionanswer }
      else
        format.html { render action: "new" }
        format.json { render json: @questionanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /questionanswers/1
  # PUT /questionanswers/1.json
  def update
    @questionanswer = Questionanswer.find(params[:id])
    row = @questionanswer.id+1
    respond_to do |format|
      if @questionanswer.update_attributes(params[:questionanswer])
        @ws[row,2] = @questionanswer.question
        @ws[row,3] = @questionanswer.answer
        @ws[row,4] = @questionanswer.checkpoint_id
        @ws.save()
        format.html { redirect_to @questionanswer, notice: 'Questionanswer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @questionanswer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionanswers/1
  # DELETE /questionanswers/1.json
  def destroy
    @questionanswer = Questionanswer.find(params[:id])
    @questionanswer.destroy

    respond_to do |format|
      format.html { redirect_to questionanswers_url }
      format.json { head :no_content }
    end
  end

  def import
    Questionanswer.import(@ws)
    redirect_to questionanswers_url, notice: "Imported!"
  end
end
