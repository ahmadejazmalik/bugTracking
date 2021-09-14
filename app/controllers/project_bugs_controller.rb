class ProjectBugsController < ApplicationController
  before_action :set_project_bug, only: %i[ show edit update destroy ]

  # GET /project_bugs or /project_bugs.json
  def index
    p1=Project.find_by(id: params[:project_id])
    @project_bugs = p1.project_bugs
  end
  # GET /project_bugs/1 or /project_bugs/1.json
  def show
  end
  # GET /project_bugs/new
  def new
    @project_bug = ProjectBug.new
  end

  # GET /project_bugs/1/edit
  def edit
  end
  # POST /project_bugs or /project_bugs.json
  def create
    @project = Project.find(params[:project_id])
    @project_bug=@project.project_bugs.create(project_bug_params)
    redirect_to @project_bug
    # p1=ProjectBug.find_by(id: params[:project_bug_id])
    # @project_bug = current_user.project_bugs.create(p1)
    # respond_to do |format|
    #     format.html { redirect_to @project_bug, notice: "Project bug was successfully created." }
    #     format.json { render :show, status: :created, location: @project_bug }
    # end
  end
  # PATCH/PUT /project_bugs/1 or /project_bugs/1.json
  def update
    respond_to do |format|
      if @project_bug.update(project_bug_params)
        format.html { redirect_to @project_bug, notice: "Project bug was successfully updated." }
        format.json { render :show, status: :ok, location: @project_bug }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @project_bug.errors, status: :unprocessable_entity }
      end
    end
  end
  def assign_bug
  end

  # DELETE /project_bugs/1 or /project_bugs/1.json
  def destroy
    @project_bug.destroy
    respond_to do |format|
      format.html { redirect_to project_bugs_url(project_id: @project_bug.project.id), notice: "Project bug was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project_bug
      @project_bug = ProjectBug.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def project_bug_params
      params.require(:project_bug).permit(:title, :deadline, :project_id, :description, :status, :bug_type, :screenshot)
    end
end
