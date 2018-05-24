class Home::EventsController < HomeController
  def index
  	@events = Event.all
  end
end
