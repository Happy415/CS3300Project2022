class TraffisProjectsController < ApplicationController
  before_action :set_traffis_project, only: %i[ show edit update destroy ]

  # GET /traffis_projects or /traffis_projects.json
  def index
    @traffis_projects = TraffisProject.all
  end

  # GET /traffis_projects/1 or /traffis_projects/1.json
  def show
  end

  # GET /traffis_projects/new
  def new
    @traffis_project = TraffisProject.new
  end

  # GET /traffis_projects/1/edit
  def edit
  end

  # POST /traffis_projects or /traffis_projects.json
  def create
    @traffis_project = TraffisProject.new(traffis_project_params)

    respond_to do |format|
      if @traffis_project.save
        format.html { redirect_to traffis_project_url(@traffis_project), notice: "Traffis project was successfully created." }
        format.json { render :show, status: :created, location: @traffis_project }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @traffis_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /traffis_projects/1 or /traffis_projects/1.json
  def update
    respond_to do |format|
      if @traffis_project.update(traffis_project_params)
        format.html { redirect_to traffis_project_url(@traffis_project), notice: "Traffis project was successfully updated." }
        format.json { render :show, status: :ok, location: @traffis_project }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @traffis_project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /traffis_projects/1 or /traffis_projects/1.json
  def destroy
    @traffis_project.destroy

    respond_to do |format|
      format.html { redirect_to traffis_projects_url, notice: "Traffis project was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_traffis_project
      @traffis_project = TraffisProject.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def traffis_project_params
      params.require(:traffis_project).permit(:title, :description)
    end
end
