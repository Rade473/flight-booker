class PassengerMailer < ApplicationMailer
  default from: 'r.shekularats@gmail.com'

  def booking_email
    @passenger = params[:passenger]
    @url = 'https://bookings/new'
    @booking = params[:booking]
    mail(to: @passenger.email, subject: 'Your booking confirmation')
  end
end
