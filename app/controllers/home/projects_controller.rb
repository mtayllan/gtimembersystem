class Home::ProjectsController < HomeController
  def index

  	@projects = Project.all
  end
end
