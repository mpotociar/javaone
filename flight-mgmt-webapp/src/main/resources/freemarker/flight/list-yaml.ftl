<#list model as flight>
<#assign aircraft = flight.aircraft />
<#assign at = flight.aircraft.type />
<#assign loc = flight.aircraft.location />
- flight:
      id:               ${flight.id}
      status:           ${flight.status}
      available_seats:  ${flight.availableSeats}
      aircraft:
          id:  ${aircraft.id},
          type:
              manufacturer:  ${at.manufacturer}
              model:         ${at.model}
              capacity:      ${at.capacity}
          location:
              x:  ${loc.x}
              y:  ${loc.y}

</#list>
