class Dashboard::TransfersController < DashboardController
  def index
  	@transferences = Transfer.order(date: :desc).page(params[:page]).per(5)
  end
end
