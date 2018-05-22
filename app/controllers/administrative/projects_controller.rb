<<<<<<< HEAD
class Administrative::ProjectsController < AdministrativeController
  before_action :set_project, only: [:edit,  :update, :destroy]
  def index
    @projects = Project.all
  end
  
  def new 
    @project = Project.new
  end 

  def edit 
  end 

   def create 
    @project = Project.new(params_project)
    
   if @project.save
      redirect_to administrative_projects_path, notice: 
      "O projeto #{@project.name} foi criado com sucesso"
    else
      render :new
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
     
      redirect_to administrative_projects_path, notice: 
       "O projeto #{@project.name} foi destruído com sucesso"
    else
      render :index
    end
  end



  
private 

  def set_project 
    @project = Project.find(params[:id])
  end

  def params_project
     params.require(:project).permit(:name, :value, :description,  :client ,:start_date,:end_date, :expected_date )

  end

end
