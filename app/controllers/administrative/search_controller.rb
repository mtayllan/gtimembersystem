class Administrative::SearchController < AdministrativeController
  
  def users 
    @users = User.search(params[:q], params[:page])
  end
  
  def events
    @events = Event.search(params[:q], params[:page])
  end
  def projects 
  	@projects = Project.search(params[:q], params[:page])
  end
  
end