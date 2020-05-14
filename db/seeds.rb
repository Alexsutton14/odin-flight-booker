#Airports
Airport.create(code: 'MAN')
Airport.create(code: 'LPL')
Airport.create(code: 'MCO')
Airport.create(code: 'LGW')
Airport.create(code: 'LAS')
Airport.create(code: 'LHR')
Airport.create(code: 'JFK')
Airport.create(code: 'LAX')

#Flights
Flight.create(start_airport: Airport.find(1), end_airport: Airport.find(3), duration: 497)
Flight.create(start_airport: Airport.find(3), end_airport: Airport.find(1), duration: 497)
Flight.create(start_airport: Airport.find(1), end_airport: Airport.find(5), duration: 640)
Flight.create(start_airport: Airport.find(5), end_airport: Airport.find(1), duration: 640)
Flight.create(start_airport: Airport.find(4), end_airport: Airport.find(8), duration: 643)
Flight.create(start_airport: Airport.find(8), end_airport: Airport.find(4), duration: 643)
Flight.create(start_airport: Airport.find(1), end_airport: Airport.find(6), duration: 66)
Flight.create(start_airport: Airport.find(6), end_airport: Airport.find(1), duration: 497)