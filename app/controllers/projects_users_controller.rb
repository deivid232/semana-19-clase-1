class ProjectsUsersController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    @project = Project.find(params[:project_id])
    @project.users << @user
    redirect_to project_path(@project)
  end
  def addproject
    @user = User.find(params[:user_id])
    @project = Project.find(params[:project_id])
    @user << @project.users
    redirect_to user_path(@user)
  end
end
