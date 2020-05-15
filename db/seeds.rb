#Airports
Airport.create(code: 'MAN', name: 'Manchester')
Airport.create(code: 'LPL', name: 'Liverpool')
Airport.create(code: 'MCO', name: 'Orlando')
Airport.create(code: 'LGW', name: 'London Gatwick')
Airport.create(code: 'LAS', name: 'Las Vegas')
Airport.create(code: 'LHR', name: 'London Heathrow')
Airport.create(code: 'JFK', name: 'New York JFK')
Airport.create(code: 'LAX', name: 'Los Angeles LAX')

#Flights
Flight.create(start_airport: Airport.find(1), end_airport: Airport.find(3), duration: 497)
Flight.create(start_airport: Airport.find(3), end_airport: Airport.find(1), duration: 497)
Flight.create(start_airport: Airport.find(1), end_airport: Airport.find(5), duration: 640)
Flight.create(start_airport: Airport.find(5), end_airport: Airport.find(1), duration: 640)
Flight.create(start_airport: Airport.find(4), end_airport: Airport.find(8), duration: 643)
Flight.create(start_airport: Airport.find(8), end_airport: Airport.find(4), duration: 643)
Flight.create(start_airport: Airport.find(1), end_airport: Airport.find(6), duration: 66)
Flight.create(start_airport: Airport.find(6), end_airport: Airport.find(1), duration: 497)