<#list model as flight>
<#assign aircraft = flight.aircraft />
<#assign at = flight.aircraft.type />
<#assign loc = flight.aircraft.location />
"${flight.id}","${flight.status}",${flight.availableSeats},${aircraft.id},"${at.manufacturer}","${at.model}",${at.capacity},${loc.x},${loc.y}
</#list>
