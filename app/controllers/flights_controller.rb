class FlightsController < ApplicationController
  def index
  end
  def find_flights
    @flights = []
    year = params["departure_time(1i)"].to_i
    month = params["departure_time(2i)"].to_i
    day = params["departure_time(3i)"].to_i
    @departure_day = DateTime.new(year, month, day)
      # Flight.where(
      #   'departure_airport_id' => params[:departure_airport]

      # )
    Flight.where("departure_airport_id = ? AND arrival_airport_id = ?", params[:departure_airport], params[:arrival_airport]).where('departure_time' => @departure_day.beginning_of_day..@departure_day.end_of_day).each do |f|
      @flights << f
    end
  end
  def show
   
  end

 
end
