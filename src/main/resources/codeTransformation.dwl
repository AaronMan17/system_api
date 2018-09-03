%dw 1.0
%output application/xml
%namespace ns0 http://soap.training.mulesoft.com/
---
{
	ns0#findFlight: {
		destination: inboundProperties."http.query.params".destination
	}
}