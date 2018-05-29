class AdministrativeController < ApplicationController
  layout 'administrative'
  before_action :authenticate_admin!
  def index
    
    month = params[:month]
    if month.nil?
      month = Date.today.to_s
    end
    @data = Date.parse(month)
    @dates = (@data.to_date..(@data + 1.month).to_date).map{ |date| date}
    @users = User.find_birth_dates_for( @data.to_date, (@data + 1.month).to_date)
    @events = Event.where(date: @data.to_date..(@data + 1.month).to_date ).order(:date)
    @projects_start = Project.where(start_date:  @data.to_date..(@data + 1.month).to_date ).order(:start_date)
    @projects_end = Project.where(end_date:  @data.to_date..(@data + 1.month).to_date ).order(:end_date)
    @projects_expected = Project.where(expected_date:  @data.to_date..(@data + 1.month).to_date ).order(:expected_date)
    
  end
end
