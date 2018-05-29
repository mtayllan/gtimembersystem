class Dashboard::EventsController < DashboardController
  
  def index
  	query = ''
    if(params[:q])
      query = params[:q]
    end
   @events = Event.search(query, params[:page])
  end
  
  def show
    @event = Event.find(params[:id])
    @event_users = @event.users
  end 
end
