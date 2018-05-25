class Dashboard::EventsController < DashboardController
  def index
  	@events = Event.all
  end
end
