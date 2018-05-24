class Administrative::UsersController < AdministrativeController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  
  def index
    @users = User.order(:name).page(params[:page]).per(10)
  end 
  
  def show 
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params_user)
    if @user.save
      redirect_to administrative_users_path, notice: "Criado"
    else
      render :new
    end
  end

  def edit
    # Uses the before_action to set the user.
  end

  def update
    if @user.update(params_user)
      redirect_to administrative_users_path, notice: "Atualizado"
    else
      render :edit
    end
  end

  def destroy
    if @user.destroy
      redirect_to  administrative_users_path, notice: "Excluído"
    else
      render :edit
    end
  end

  private

    def set_user
      @user = User.find(params[:id])
    end

    def params_user
        params.require(:user).permit(:name,:email, :password, :password_confirmation,:birth_date,:address, :postal_code, :city, :gender, :phone, :photo, :role)
    end
end
