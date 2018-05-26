class Administrative::EventsController < AdministrativeController
  before_action :set_event, only: [:edit,  :update, :destroy]
  
  def index
     @events = Event.order(:name).page(params[:page]).per(10)
  end
  
  def new 
    @event = Event.new
  end 
  
  def show 
    @event = Event.find(params[:id])
  end

  def edit 
  end 

  def create 
    @event = Event.new(params_event)
    if @event.save
      redirect_to administrative_events_path, notice: "O evento #{@event.name} foi criado com sucesso"
    else
      render :new
    end
  end 

  def update
    if  @event.update(params_event)
       redirect_to administrative_events_path, notice: 
      "O evento #{@event.name} foi atualizado com sucesso"
    else 
      render :edit
    end
  end

  def destroy 
    if @event.present?
     # @event.users.clear #remove all associations
      @event.destroy
      redirect_to administrative_events_path, notice: "O evento #{@event.name} foi destruída com sucesso"
    else
      render :index
    end
  end



  
private 

  def set_event 
    @event = Event.find(params[:id])
  end

  def params_event
     params.require(:event).permit(:name, :date, :description)

  end
end