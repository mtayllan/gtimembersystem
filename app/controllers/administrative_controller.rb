class AdministrativeController < ApplicationController
  layout 'administrative'
  before_action :authenticate_admin!
end
