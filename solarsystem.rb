require "./solar_system_class"
require "./planets_class"

unicorn = {
  name: "Planet Unicorn",
  pop_by: "millions of unicorns",
  diameter: 5000,
  distance_from_sun: 50
}

cyclops = {
  name: "Planet Cyclops",
  pop_by: "the lonely cyclops, Fred",
  diameter: 10,
  distance_from_sun: 1000,
  good_for_humans: false
}

earth = {
  name: "Planet Earth",
  pop_by: "humans",
  diameter: 300,
  distance_from_sun: 400
}

u = Planets.new(unicorn)

c = Planets.new(cyclops)

e = Planets.new(earth)

best_ever = SolarSystem.new("Best Ever Solar System", "one zillion")

# best_ever.print_ss_info
#
# best_ever.add_one_planet(u)
# best_ever.add_one_planet(c)
# best_ever.add_one_planet(e)
#
# best_ever.print_ss_info
#
# array_of_planets = []
# array_of_planets.push(u)
# array_of_planets.push(c)
# array_of_planets.push(e)
#
# best_ever.add_array_planets(array_of_planets)
#
# best_ever.print_ss_info
#
# best_ever.distance_from_sun(u, c)
