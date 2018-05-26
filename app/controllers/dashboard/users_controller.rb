class Dashboard::UsersController < DashboardController
  def index
  	 @users = User.order(:name).page(params[:page]).per(10)
  end
end
