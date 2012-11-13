class QuestionanswersController < ApplicationController
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

    respond_to do |format|
      if @questionanswer.save
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

    respond_to do |format|
      if @questionanswer.update_attributes(params[:questionanswer])
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
end
