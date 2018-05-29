class AdministrativeController < ApplicationController
  layout 'administrative'
  before_action :authenticate_admin!
  def index
    
    @users = User.where(birth_date:  (Time.now)..(Time.now.midnight + 1.year) )
    @events = Event.where(date:  (Time.now)..(Time.now.midnight + 1.year) )
    @projects = Project.where(start_date:  (Time.now)..(Time.now.midnight + 1.year) )
    
  end
end
