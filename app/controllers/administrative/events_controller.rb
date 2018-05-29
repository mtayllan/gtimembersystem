class Administrative::EventsController < AdministrativeController
  before_action :set_event, only: [:edit,  :update, :destroy]
  
  def index
    query = ''
    if(params[:q])
      query = params[:q]
    end
   @events = Event.search(query, params[:page])
  end
  
  def new 
    @event = Event.new
  end 
  
  def show 
    @event = Event.find(params[:id])
    @event_users = @event.users
    
    query = ''
    if(params[:q])
      query = params[:q]
    end
    @users = User.search(query, params[:page])
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
  
  def edit_participation
    event = Event.find(params[:id])
    user = User.find(params[:user_id])
    act = params[:act]
    if act == 'add'
      event.participations.create(user: user)
      if event.save
        redirect_to administrative_event_path(event.id), notice: "Participante Adicionado."
      else
        render :show
      end
    elsif act == 'remove'
      p = event.participations.where("event_id=#{event.id} AND user_id=#{user.id}")
      if event.participations.delete(p)
        event.save
        redirect_to administrative_event_path(event.id), notice: "Participante removido."
      else
        render :show
      end
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