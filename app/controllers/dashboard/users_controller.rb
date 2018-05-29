class Dashboard::UsersController < DashboardController
  
  def index
  	query = ''
    if(params[:q])  
      query = params[:q]
    end
    @users = User.search(query, params[:page])
  end
  
  def show 
    @user = User.find(params[:id])
    @user_projects = @user.projects
    @user_events = @user.events
  end
end
