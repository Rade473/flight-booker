class Booking < ApplicationRecord
  belongs_to :flight, class_name: 'Flight'
  has_many :passenger, inverse_of: :booking
  accepts_nested_attributes_for :passenger
end
