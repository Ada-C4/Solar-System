#tests that solar system wave 2 requirements are met

require "./SolarSystem.rb"
require "./Planet.rb"

#data
mercury = Planet.new({
  name: "Mercury",
  diameter: "4,878 km",
  weight_multiplier: 0.38,
  num_moons: 0,
  rate_solar_rotation: 87.96,
  distance_from_sun: 57900000
})
venus = Planet.new({
  name: "Venus",
  diameter: "12,100 km",
  weight_multiplier: 0.88,
  num_moons: 0,
  rate_solar_rotation: 224.68,
  distance_from_sun: 108200000
})

earth = Planet.new({
  name: "Earth",
  diameter: "12,756 km",
  weight_multiplier: 1,
  num_moons: 1,
  rate_solar_rotation: 365.25,
  distance_from_sun: 149600000
})

mars = Planet.new({
  name: "Mars",
  diameter: "6,785 km",
  weight_multiplier: 0.38,
  num_moons: 2,
  rate_solar_rotation: 686.98,
  distance_from_sun: 227900000
})

jupiter = Planet.new({
  name: "Jupiter",
  diameter: "139,822 km",
  weight_multiplier: 2.36,
  num_moons: 67,
  rate_solar_rotation: 4380,
  distance_from_sun: 778300000
})

saturn = Planet.new({
  name: "Saturn",
  diameter: "116,464 km",
  weight_multiplier: 0.91,
  num_moons: 62,
  rate_solar_rotation: 10585,
  distance_from_sun: 886700000
})

uranus= Planet.new({
  name: "Uranus",
  diameter: "51,488 km",
  weight_multiplier: 0.89,
  num_moons: 27,
  rate_solar_rotation: 30660,
  distance_from_sun: 1784000000
})

neptune = Planet.new({
  name: "Neptune",
  diameter: "49,493 km",
  weight_multiplier: 1.13,
  num_moons: 14,
  rate_solar_rotation: 60225,
  distance_from_sun: 4497100000
})

my_planet = Planet.new({
  name: "My Planet",
  diameter: "500 miles",
  weight_multiplier: 0.76,
  num_moons: 900,
  rate_solar_rotation: 365,
  distance_from_sun: 3089098
})

#test adding planets, first just one, then an array
milky_way = SolarSystem.new("Milky Way", 200)
milky_way.add_planet(my_planet)
milky_way.print_out()
puts ""
planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]
milky_way.add_planets(planets)
milky_way.print_out()
puts ""

#test using a default value attribute
my_planet.weight_on_planet(130)
my_planet.weight_on_planet()
puts ""

#calculating distance between planets
milky_way.distance_between(my_planet, mercury)
milky_way.distance_between(mercury, my_planet)
milky_way.distance_between(venus, mars)

#caclulating local year
milky_way.local_year(mercury)
milky_way.local_year(earth)
