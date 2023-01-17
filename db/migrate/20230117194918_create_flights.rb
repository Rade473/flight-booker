class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.references :arrival_airport, foreign_key: { to_table: :airports }
      t.references :departure_airport, foerign_key: { to_table: :airports }
      t.datetime :departure_time
      t.decimal :flight_duration_hours, precision: 4, scale: 2

      t.timestamps
    end
  end
end
