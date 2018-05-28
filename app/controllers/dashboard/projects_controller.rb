class Dashboard::ProjectsController < DashboardController
  def index
  	@projects = Project.order(:name).page(params[:page]).per(7)
  end
  
  def show
    @project = Project.find(params[:id])
    @project_users = @project.users
  end
end
