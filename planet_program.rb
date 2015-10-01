require './planet'
require './solar_system'

planets = [
  {
    name: "Mercury",
    mass: 0.330,
    diameter: 4879,
    length_of_day: 4222.6,
    distance_from_sun: 57.9,
    mean_temperature: 167,
    number_of_moons: 0,
    ring_system: false,
    orbital_period: 88.0,
  },
  {
    name: "Venus",
    mass: 4.87,
    diameter: 12104,
    length_of_day: 2802,
    distance_from_sun: 108.2,
    mean_temperature: 464,
    number_of_moons: 0,
    ring_system: false,
    orbital_period: 224.7,
  },
  {
    name: "Earth",
    mass: 5.97,
    diameter: 12756,
    length_of_day: 24.0,
    distance_from_sun: 149.6,
    mean_temperature: 15,
    number_of_moons: 1,
    ring_system: false,
    orbital_period: 365.2,
  },
  {
    name: "Mars",
    mass: 0.642,
    diameter: 6782,
    length_of_day: 24.7,
    distance_from_sun: 227.9,
    mean_temperature: -65,
    number_of_moons: 2,
    ring_system: false,
    orbital_period: 687.0,
  },
  {
    name: "Jupiter",
    mass: 1898,
    diameter: 142984,
    length_of_day: 9.9,
    distance_from_sun: 778.6,
    mean_temperature: -110,
    number_of_moons: 67,
    ring_system: true,
    orbital_period: 4331,
  },
  {
    name: "Saturn",
    mass: 568,
    diameter: 120536,
    length_of_day: 10.7,
    distance_from_sun: 1433.5,
    mean_temperature: -140,
    number_of_moons: 62,
    ring_system: true,
    orbital_period: 10747,
  },
  {
    name: "Uranus",
    mass: 86.8,
    diameter: 51118,
    length_of_day: 17.2,
    distance_from_sun: 2872.5,
    mean_temperature: -195,
    number_of_moons: 27,
    ring_system: true,
    orbital_period: 30589,
  },
  {
    name: "Neptune",
    mass: 102,
    diameter: 49528,
    length_of_day: 16.1,
    distance_from_sun: 4495.1,
    mean_temperature: -200,
    number_of_moons: 14,
    ring_system: true,
    orbital_period: 59800,
  },
]

dwarf_planet = {
  name: "Pluto",
  mass: 0.0146,
  diameter: 2370,
  length_of_day: 153.3,
  distance_from_sun: 5906.4,
  mean_temperature: -225,
  number_of_moons: 5,
  ring_system: false,
  orbital_period: 90560,
}

# Create the universe object
universe = SolarSystem.new()
# Create a single planet object, Pluto the dwarf planet
dwarf = Planet.new(dwarf_planet)
# Add the single planet, pluto, to the universe
universe.add_a_planet(dwarf)
# Create an empty array to hold all the planet objects
planet_objects = []
# Go through the planet hash (above) and create planet objects for each
# Push each of the planet objects to the planet_objects array
planets.each do |planet_hash|
  planet_objects.push(Planet.new(planet_hash))
end
# Add the array of the other planet objects to the universe
universe.add_many_planets(planet_objects)

# Print the distance between two random planets
puts "*" * 44
puts "Here are a few fun facts:"
num_planets = universe.planets.length
universe.distance(universe.planets[rand(num_planets)], universe.planets[rand(num_planets)])
universe.distance(universe.planets[rand(num_planets)], universe.planets[rand(num_planets)])
universe.distance(universe.planets[rand(num_planets)], universe.planets[rand(num_planets)])
universe.distance(universe.planets[rand(num_planets)], universe.planets[rand(num_planets)])

puts "*" * 44
print "Press enter for more solar system fun."
gets

# Calculating planet ages with default universe start date of 1979
puts "This universe was invented in #{universe.formation_year}"
universe.planets.each do |planet|
  planet.calc_year(universe.formation_year)
end

puts "*" * 44
print "Press enter for more solar system fun."
gets

# Print the universe fact sheet from assignment wave 1
puts "*" * 44
print "Press enter for more solar system fun."
gets
universe.print_fact_sheet
