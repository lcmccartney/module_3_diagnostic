class SearchController < ApplicationController
  def index
    @stations = Station.list_stations(params)
  end
end
