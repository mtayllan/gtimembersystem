class AdministrativeController < ApplicationController
  layout 'admin_lte_2'
  before_action :authenticate_admin!
  def index
  end
end
