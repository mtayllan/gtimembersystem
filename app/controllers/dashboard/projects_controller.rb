class Dashboard::ProjectsController < DashboardController
  def index
  	query = ''
    if(params[:q])
      query = params[:q]
    end
    @projects = Project.search(query, params[:page])
  end
  
  def show
    @project = Project.find(params[:id])
    @project_users = @project.users
  end
end
