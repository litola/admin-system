class ProjectsController < ApplicationController
  before_action :authenticate_user!
  before_action :super_admin_only
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  # def index
  #   if current_user.super?
  #     @projects = Project.all
  #   else
  #     @projects = Project.where(company_id: current_user.company_id)
  #   end
  # end

  def show
  end

  def new
    @project = Project.new
    @client = Client.find(params[:client_id])
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to client_path(@project.client.id), notice: "Project was successfully created."
    else
      @errors = @project.errors.full_messages
      render 'new'
    end
  end

  def update
    @project.update_attributes(project_params)
    if @project.save
      redirect_to client_path(@project.client.id), notice: "Project was successfully updated."
    else
      @errors = @project.errors.full_messages
      render 'edit'
    end
  end

  def destroy
    @project.destroy
    redirect_to client_path(@project.client.id)
  end

private

  def super_admin_only
    unless current_user.super? || current_user.admin?
      redirect_to root_path, :alert => "Access denied."
    end
  end

  def set_project
    @project = Project.find(params[:id])
    @client = @project.client
  end

  def project_params
    params.require(:project).permit(:name, :contact, :contact_number, :company_id, :client_id)
  end

end