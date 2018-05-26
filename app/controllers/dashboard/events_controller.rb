class Dashboard::EventsController < DashboardController
  def index
  	@events = Event.order(:name).page(params[:page]).per(10)
  end
end
