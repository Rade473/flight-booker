# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



  Airport.create(code: "MSC")
  Airport.create(code: "NYC")
  Airport.create(code: "LND")
  Airport.create(code: "MDR")
  Airport.create(code: "PRS")

Flight.create(arrival_airport:Airport.find_by(code:"NYC"), departure_airport: Airport.find_by(code:"MSC"), departure_time: DateTime.new(2023,1,19,5,0,0), flight_duration:(8*3600))
Flight.create(arrival_airport:Airport.find_by(code:"LND"), departure_airport: Airport.find_by(code:"MSC"), departure_time: DateTime.new(2023,1,19,14,0,0), flight_duration:(1*3600))
Flight.create(arrival_airport:Airport.find_by(code:"MSC"), departure_airport: Airport.find_by(code:"MDR"), departure_time: DateTime.new(2023,1,19,19,30,0), flight_duration:(3*3600))
Flight.create(arrival_airport:Airport.find_by(code:"MDR"), departure_airport: Airport.find_by(code:"PRS"), departure_time: DateTime.new(2023,1,20,7,15,0), flight_duration:(1*3600))
Flight.create(arrival_airport:Airport.find_by(code:"PRS"), departure_airport: Airport.find_by(code:"NYC"), departure_time: DateTime.new(2023,1,20,12,45,0), flight_duration:6*3600)
Flight.create(arrival_airport:Airport.find_by(code:"LND"), departure_airport: Airport.find_by(code:"PRS"), departure_time: DateTime.new(2023,1,20,13,0,0), flight_duration:1*3600)