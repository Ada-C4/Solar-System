require "./planet_class"
require "./solar_class"

mercury_hash = {
  name: "Mercury",
  diameter: 3031,
  distance_from_sun: 36,
  number_of_moons: 0,
  solar_rotation: 0.24
}

venus_hash = {
  name: "Venus",
  diameter: 7521,
  distance_from_sun: 67,
  number_of_moons: 0,
  solar_rotation: 0.62
}

earth_hash = {
  name: "Earth",
  diameter: 7926,
  distance_from_sun: 93,
  number_of_moons: 1,
  solar_rotation: 365.24
}

mars_hash = {
  name: "Mars",
  diameter: 4217,
  distance_from_sun: 93,
  number_of_moons: 1,
  solar_rotation: 697
}

jupiter_hash = {
  name: "Jupiter",
  diameter: 88730,
  distance_from_sun: 484,
  number_of_moons: 16,
  solar_rotation: 11.6
}

saturn_hash = {
  name: "Saturn",
  diameter: 74900,
  distance_from_sun: 888,
  number_of_moons: 18,
  solar_rotation: 29.5
}

uranus_hash = {
  name: "Uranus",
  diameter: 31763,
  distance_from_sun: 1780,
  number_of_moons: 17,
  solar_rotation: 84
}

neptune_hash = {
  name: "Neptune",
  diameter: 31775,
  distance_from_sun: 2800,
  number_of_moons: 16,
  solar_rotation: 165
}

mercury = Planet.new(mercury_hash)
venus = Planet.new(venus_hash)
earth = Planet.new(earth_hash)
mars = Planet.new(mars_hash)
jupiter = Planet.new(jupiter_hash)
saturn = Planet.new(saturn_hash)
uranus = Planet.new(uranus_hash)
neptune = Planet.new(neptune_hash)


original_planets = []
original_planets.push(mercury)
original_planets.push(venus)
original_planets.push(earth)
original_planets.push(mars)
original_planets.push(jupiter)
original_planets.push(saturn)
original_planets.push(uranus)
original_planets.push(neptune)

milky_way_hash = {
  name: "Milky Way"
}

milky_way = Solar_System.new(milky_way_hash)

milky_way.add_many_planets(original_planets)

milky_way.print_planets


#milky_way.distance_away(mercury, neptune)
