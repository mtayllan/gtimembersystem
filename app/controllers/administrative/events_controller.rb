class Administrative::EventsController < AdministrativeController
  
  def index
    @events = Event.all
  end
  
  def new 
  end 

  def create 
  end 

  def edit 
  end 

  def update
  end
  
end