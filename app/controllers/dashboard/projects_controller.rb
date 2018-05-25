class Dashboard::ProjectsController < DashboardController
  def index
  	@projects = Project.all
  end
end
