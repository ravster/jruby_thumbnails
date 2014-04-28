class ProjectsController < ApplicationController
  before_filter :find_project, only: [:show]

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new permitted_params

    if @project.save
      redirect_to @project
    else
      render status: 422
    end
  end

  def show
  end

  private
  def permitted_params
    params.require(:project).permit(:image)
  end

  def find_project
    @project = Project.find(params[:id])
  end
end
