class Administrative::TransfersController < AdministrativeController
  before_action :set_transfer, only: [:edit, :update, :destroy]

  def index
    @transferences = Transfer.order(date: :desc).page(params[:page]).per(5)
  end 

  def new
      @transfer = Transfer.new
      @transfer.price = 0;
  end

  def create
    @transfer = Transfer.new(params_transfer)
    if @transfer.save
      redirect_to administrative_transfers_path, notice: "Criado"
    else
      render :new
    end
  end

  def edit
    # Uses the before_action to set the transfer.
  end

  def update
    if @transfer.update(params_transfer)
      redirect_to administrative_transfers_path, notice: "Atualizado"
    else
      render :edit
    end
  end

  def destroy
    if @transfer.destroy
      redirect_to  administrative_transfers_path, notice: "Excluído"
    else
      render :edit
    end
  end

  private

    def set_transfer
      @transfer = Transfer.find(params[:id])
    end

    def params_transfer
        params.require(:transfer).permit(:description, :price, :category, :date)
    end
  
end
