class Station
  attr_reader :name, :address, :fuel_type, :access_time

  def initialize(params)
    @name = params[:station_name]
    @address = params[:street_address]
    @fuel_type = params[:fuel_type_code]
    @access_time = params[:access_days_time]
  end

  def self.list_stations(params)
    NRELService.new.get_stations(params).map do |station|
      Station.new(station)
    end
  end
end
