class Dashboard::ProfileController < DashboardController
  before_action :set_user, only: [:edit, :update]
  
  
  def edit
  end
  
  def update
    if @user.update(params_profile)
      redirect_to edit_dashboard_profile_path, notice: "Atualizado"
    else
      render :edit
    end
  end
  
  private
  
    def params_profile
        params.require(:user).permit(:name,:birth_date,:address, :postal_code, :city, :gender, :phone, :photo, :role)
    end
  
    def set_user
      @user = User.find(current_user.id)
    end
end