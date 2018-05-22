class AdministrativeController < ApplicationController
  layout 'administrative'
  before_action :authenticate_admin!
  def index
  end
end
