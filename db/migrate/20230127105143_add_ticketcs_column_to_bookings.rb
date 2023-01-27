class AddTicketcsColumnToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :ticket_number, :string
  end
end
