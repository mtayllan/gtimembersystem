class Dashboard::ProjectsController < DashboardController
  def index
  	@projects = Project.order(:name).page(params[:page]).per(10)
  end
end
