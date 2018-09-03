%dw 1.0
%output application/json
---
payload.flights map ((flight , indexOfFlight) -> {
	airline: flight.airlineName,
	flightCode: flight.code,
	fromAirportCode: flight.origin,
	toAirportCode: flight.destination,
	departureDate: flight.departureDate,
	emptySeats: flight.emptySeats,
	price: flight.price,
	planeType: flight.planeType
})