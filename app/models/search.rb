class Search

  def initialize
    @connection = Faraday.new "https://community-nrel-national-renewable-energy-laboratory.p.mashape.com/api/alt-fuel-stations/v1/nearest.json",
    @connection.headers["X-Api-Key"] = ENV["NREL_key"]
    @connection.headers["fuel_type"] = "ELEC"
  end

  def parse(response)
    

  end
end
