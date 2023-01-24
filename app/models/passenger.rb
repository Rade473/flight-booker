class Passenger < ApplicationRecord
  belongs_to :booking, class_name: 'Booking'
  belongs_to :flight
end
