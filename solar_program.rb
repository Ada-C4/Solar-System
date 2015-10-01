require "./planet"
require "./solar_system"

this_solar_system = SolarSystem.new("The Solar System", 4.6e9)

mercury = {name: "Mercury", diameter: 3032, mass: 3.285e23, moons: 0, orbital_period: 88, rate_solar_rotation: 172800, distance_from_the_sun: 35.98e6}
venus = {name: "Venus", dimaeter: 7520.8, mass: 4.867e24, moons: 0, orbital_period: 225, rate_solar_rotation: 126077, distance_from_the_sun: 67.24e6}
earth = {name: "Earth", diameter: 7917.5, mass: 5.972e24, moons: 1, orbital_period: 365, rate_solar_rotation: 108000, distance_from_the_sun: 92.96e6}
mars = {name: "Mars", diameter: 4212, mass: 6.39e23, moons: 2, orbital_period: 687, rate_solar_rotation: 86400, distance_from_the_sun: 141.6e6}
jupiter = {name: "Jupiter", diameter: 86881.4, mass: 1.898e27, moons: 63, orbital_period: 4380, rate_solar_rotation: 47160, distance_from_the_sun: 483.8e6}
saturn = {name: "Saturn", diameter: 72367.4, mass: 5.683e26, moons: 62, orbital_period: 10585, rate_solar_rotation: 34884, distance_from_the_sun: 890.7e6}
uranus = {name: "Uranus", diameter: 31518, mass: 8.681e25, moons: 27, orbital_period: 30660, rate_solar_rotation: 24607, distance_from_the_sun: 1.787e9}
neptune = {name: "Neptune", diameter: 30599, mass: 1.024e26, moons: 13, orbital_period: 60225, rate_solar_rotation: 19720, distance_from_the_sun: 2.795e9}

mercury_planet = Planet.new(mercury)
venus_planet = Planet.new(venus)
earth_planet = Planet.new(earth)
mars_planet = Planet.new(mars)
jupiter_planet = Planet.new(jupiter)
saturn_planet = Planet.new(saturn)
uranus_planet = Planet.new(uranus)
neptune_planet = Planet.new(neptune)

this_solar_system.add_one_planet(mercury_planet)
this_solar_system.add_one_planet(venus_planet)
this_solar_system.add_planet_array([earth_planet, mars_planet, jupiter_planet, saturn_planet, uranus_planet, neptune_planet])
this_solar_system.print_out
puts
mercury_planet.orbits_around
mercury_planet.orbits_around("Mickey Mouse")
puts
this_solar_system.distance_between(mercury_planet, venus_planet)
puts
