class WorksitesController < ApplicationController
  before_action :set_worksite, only: [:show, :edit, :update, :destroy]

  # GET /worksites
  # GET /worksites.json
  def index
    @worksites = Worksite.all
  end

  # GET /worksites/1
  # GET /worksites/1.json
  def show
  end

  # GET /worksites/new
  def new
    @worksite = Worksite.new
  end

  # GET /worksites/1/edit
  def edit
  end

  # POST /worksites
  # POST /worksites.json
  def create
    @worksite = Worksite.new(worksite_params)

    respond_to do |format|
      if @worksite.save
        format.html { redirect_to @worksite, notice: 'Worksite was successfully created.' }
        format.json { render :show, status: :created, location: @worksite }
      else
        format.html { render :new }
        format.json { render json: @worksite.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /worksites/1
  # PATCH/PUT /worksites/1.json
  def update
    respond_to do |format|
      if @worksite.update(worksite_params)
        format.html { redirect_to @worksite, notice: 'Worksite was successfully updated.' }
        format.json { render :show, status: :ok, location: @worksite }
      else
        format.html { render :edit }
        format.json { render json: @worksite.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /worksites/1
  # DELETE /worksites/1.json
  def destroy
    @worksite.destroy
    respond_to do |format|
      format.html { redirect_to worksites_url, notice: 'Worksite was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_worksite
      @worksite = Worksite.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def worksite_params
      params.require(:worksite).permit(:name, :location, :start_date, :end_date, :budget)
    end
end
