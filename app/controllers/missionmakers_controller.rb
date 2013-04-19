class MissionmakersController < ApplicationController
  # GET /missionmakers
  # GET /missionmakers.json
  def index
    @missionmakers = Missionmaker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @missionmakers }
    end
  end

  # GET /missionmakers/1
  # GET /missionmakers/1.json
  def show
    @missionmaker = Missionmaker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @missionmaker }
    end
  end

  # GET /missionmakers/new
  # GET /missionmakers/new.json
  def new
    @missionmaker = Missionmaker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @missionmaker }
    end
  end

  # GET /missionmakers/1/edit
  def edit
    @missionmaker = Missionmaker.find(params[:id])
  end

  # POST /missionmakers
  # POST /missionmakers.json
  def create
    @missionmaker = Missionmaker.new(params[:missionmaker])

    respond_to do |format|
      if @missionmaker.save
        format.html { redirect_to @missionmaker, notice: 'Missionmaker was successfully created.' }
        format.json { render json: @missionmaker, status: :created, location: @missionmaker }
      else
        format.html { render action: "new" }
        format.json { render json: @missionmaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /missionmakers/1
  # PUT /missionmakers/1.json
  def update
    @missionmaker = Missionmaker.find(params[:id])

    respond_to do |format|
      if @missionmaker.update_attributes(params[:missionmaker])
        format.html { redirect_to @missionmaker, notice: 'Missionmaker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @missionmaker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /missionmakers/1
  # DELETE /missionmakers/1.json
  def destroy
    @missionmaker = Missionmaker.find(params[:id])
    @missionmaker.destroy

    respond_to do |format|
      format.html { redirect_to missionmakers_url }
      format.json { head :no_content }
    end
  end
end
