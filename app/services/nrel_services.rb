class NRELServices

  def initialize
    @connection = Faraday.new("https://community-nrel-national-renewable-energy-laboratory.p.mashape.com/api/alt-fuel-stations/v1/nearest.json")
    @connection.headers["X-Api-Key"] = ENV["NREL_key"]
    @connection.headers["fuel_type"] = "ELEC"
    @connection.headers["limit"] = "10"
    @connection.headers["zip"] = "80203"
    @connection.headers["radius"] = "6"
  end

  def get_stations
    response = @connection.get = "stations"
    parse(response.body)
  end

  def parse(response)
    JSON.parse(response)
  end
end
