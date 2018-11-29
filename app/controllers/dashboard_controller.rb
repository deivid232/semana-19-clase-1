class DashboardController < ApplicationController
  def index
      @projects = Project.all
      @users = User.all
  end

  def create
    @user = User.find(params[:id])
    @project = Project.find(params[:id])
    a = @project << @user
    a.save
    redirect_to project_show_path
  end

  def user_params
    params.require(:user).permit(:name, :email)
  end
end
