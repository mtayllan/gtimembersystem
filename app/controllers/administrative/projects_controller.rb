class Administrative::ProjectsController < AdministrativeController
  before_action :set_project, only: [:edit,  :update, :destroy, :show]
  
  def index
    query = ''
    if(params[:q])
      query = params[:q]
    end
    @projects = Project.search(query, params[:page]) 
  end
  
  def new 
    @project = Project.new
  end 

  def edit 
  end 

  def show
    @project_users = @project.users

    query = ''
    if(params[:q])
      query = params[:q]
    end
    @users = User.search(query, params[:page])

  end

  def create 
    @project = Project.new(params_project)
    if @project.save
      redirect_to administrative_projects_path, notice: "O projeto #{@project.name} foi criado com sucesso"
    else
      render :new
    end
  end 

  def edit_contributions
    project = Project.find(params[:id])
    user = User.find(params[:user_id])
    act = params[:act]
    if act == 'add'
      if project.contributions.create(user: user)
        redirect_to administrative_project_path(project.id), notice: "Membro adicionado com sucesso!"
      else
        render :show
      end
    elsif act == 'remove'
      p = project.contributions.where("project_id=#{project.id} AND user_id=#{user.id}")
      if project.contributions.delete(p)
        redirect_to administrative_project_path(project.id), notice: "Participante removido."
      else
        render :show
      end
    end
  end

  def update
    if  @project.update(params_project)
       redirect_to administrative_projects_path, notice: 
      "O projeto #{@project.name} foi atualizado com sucesso"
    else 
      render :edit
    end
  end

  def destroy 
    if @project.present?
    
      @project.destroy
      redirect_to administrative_projects_path, notice: "O projeto #{@project.name} foi destruído com sucesso"
    else
      render :index
    end
  end



  
private 

  def set_project 
    @project = Project.find(params[:id])
  end

  def params_project
     params.require(:project).permit(:name, :price,  :start_date, :description,  :client, :end_date, :expected_date)

  end
end