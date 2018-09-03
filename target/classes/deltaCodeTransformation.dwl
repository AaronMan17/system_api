%dw 1.0
%output application/json
%namespace ns0 http://soap.training.mulesoft.com/
---
payload.ns0#findFlightResponse.*return map ((return , indexOfReturn) -> {
	airline: return.airlineName,
	flightCode: return.code,
	fromAirportCode: return.origin,
	toAirportCode: return.destination,
	departureDate: return.departureDate,
	emptySeats: return.emptySeats,
	price: return.price,
	planeType: return.planeType
})
