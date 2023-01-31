class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @selected_flight = Flight.find(params[:flight])
    @ticket_number = params[:ticket_number].to_i
    @ticket_number.times { @booking.passenger.build }
  end

  def create 
    @booking = Booking.new(booking_params)
    
    @selected_flight = Flight.find(params[:booking][:flight_id])

      if @booking.save!

      redirect_to @booking, notice: "You have successfully booked your flight"
      else

      end
    end

    def show
      @booking = Booking.find(params[:id])
      @passengers =[]
      
      Passenger.where("booking_id = ?", params[:id]).each do |p|
        @passengers << p
      end
    end



  private

  def booking_params
    params.require(:booking).permit(:flight_id, :ticket_number, passenger_attributes: [:name, :email])
  end

end
