class Dashboard::TransfersController < DashboardController
  def index
  	@transferences = Transfer.order(created_at: :desc).page(params[:page]).per(5)
  end
end
