#Airports
Airport.create(code: 'MAN', name: 'Manchester')
Airport.create(code: 'LPL', name: 'Liverpool')
Airport.create(code: 'MCO', name: 'Orlando')
Airport.create(code: 'LGW', name: 'London Gatwick')
Airport.create(code: 'LAS', name: 'Las Vegas')
Airport.create(code: 'LHR', name: 'London Heathrow')
Airport.create(code: 'JFK', name: 'New York JFK')
Airport.create(code: 'LAX', name: 'Los Angeles LAX')

#Routes
routes = [
    [Airport.find(1), Airport.find(3), 479],
    [Airport.find(3), Airport.find(1), 479],
    [Airport.find(1), Airport.find(5), 640],
    [Airport.find(5), Airport.find(1), 640],
    [Airport.find(4), Airport.find(8), 643],
    [Airport.find(8), Airport.find(4), 643],
    [Airport.find(1), Airport.find(6), 66],
    [Airport.find(6), Airport.find(1), 497],
    [Airport.find(1), Airport.find(6), 497],
]

#Dates
dates = [
    DateTime.new(2020,5,16,7,0,0),
    DateTime.new(2020,5,16,18,0,0),
    DateTime.new(2020,5,17,7,0,0),
    DateTime.new(2020,5,17,18,0,0),
    DateTime.new(2020,5,18,7,0,0),
    DateTime.new(2020,5,18,18,0,0),
    DateTime.new(2020,5,19,7,0,0),
    DateTime.new(2020,5,19,18,0,0),
    DateTime.new(2020,5,20,7,0,0),
    DateTime.new(2020,5,20,18,0,0),
    DateTime.new(2020,5,21,7,0,0),
    DateTime.new(2020,5,21,18,0,0),
    DateTime.new(2020,5,22,7,0,0),
    DateTime.new(2020,5,22,18,0,0),
    DateTime.new(2020,5,23,7,0,0),
    DateTime.new(2020,5,23,18,0,0),
    DateTime.new(2020,5,24,7,0,0),
    DateTime.new(2020,5,24,18,0,0),
    DateTime.new(2020,5,25,7,0,0),
    DateTime.new(2020,5,25,18,0,0)
]

#Flights
routes.each do |o|
    dates.each do |d|
        Flight.create(start_airport: o[0],end_airport: o[1],duration: o[2],datetime: d)
    end
end