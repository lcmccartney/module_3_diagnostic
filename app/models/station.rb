class Station
  attr_reader :name, :address, :fuel_type, :access_time

  def initialize
    @name = params[:station_name]
    @address = params[:street_address]
    @fuel_type = params[:fuel_type_code]
    @access_time = params[:access_days_time]
  end
end
