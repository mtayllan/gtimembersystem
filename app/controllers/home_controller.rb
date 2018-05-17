class HomeController < ApplicationController
  before_action :authenticate_user!
  layout 'admin_lte_2'
  def index
  end
end
