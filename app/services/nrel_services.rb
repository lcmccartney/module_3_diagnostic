class NRELServices

  def initialize
    @connection = Faraday.new("https://api.data.gov/nrel/alt-fuel-stations/v1.json")
    @connection.headers["X-Api-Key"] = ENV["NREL_key"]
    @connection.headers["fuel_type"] = "ELEC"
    @connection.headers["location"] = "80203"
    @connection.headers["radius"] = "6"
    @connection.headers["limit"] = "10"
  end

  def get_stations
    response = @connection.get = "stations"
    parse(response.body)
  end

  def parse(response)
    JSON.parse(response)
  end
end
