require "./planets2"
require "./solar_system"

apple_hash = {
  name:"Apple",
  diameter: 60,
  mass:4_500,
  number_of_moons:0,
  color:"red",
  distance_from_the_sun:4000,
}

apple = Planet.new(apple_hash)

pear_hash = {
  name: "Pear",
  diameter: 20,
  mass: 3000,
  number_of_moons: 4,
  color: "green",
  distance_from_the_sun: 5000,
}

pear = Planet.new(pear_hash)

orange_hash = {
  name: "Orange",
  diameter: 10,
  mass: 500,
  color: "orange",
  distance_from_the_sun:10000,
}

orange = Planet.new(orange_hash)

orange.number_of_moons

planets_array = []
planets_array.push(apple)
planets_array.push(pear)

tree_hash = {
  name: "Tree",
}

tree = SolarSystem.new(tree_hash)


tree.add_planet(orange)

tree.add_multiple_planets(planets_array)

tree.about

# Empty Hash template to create new planets
#empty_planet = {
#   name:,
#   diameter:,
#   mass:,
#   number_of_moons:,
#   color:,
#   distance_from_the_sun:,
# }
