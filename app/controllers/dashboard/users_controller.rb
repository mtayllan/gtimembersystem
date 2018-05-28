class Dashboard::UsersController < DashboardController
  
  def index
  	 @users = User.order(:name).page(params[:page]).per(10)
  end
  
  def show 
    @user = User.find(params[:id])
  end
end
