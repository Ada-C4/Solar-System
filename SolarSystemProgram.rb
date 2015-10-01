require "./SolarSystemClass"

# This is the genereric planet construction hash
# planet_hash = {
#   name: "Name"
#   color: "color"
#   size: "size"
# }

atorp_hash = {
  name: "Atorp",
  color: "brown",
  size: "small"
}

# make this list of planet.news into hashes so that they can be made into planets

brockt_hash ={
  name: "Brockt",
  color: "yellow",
  size: "medium"
}

camdoor_hash = {
  name: "Camdoor",
  color: "red",
  size: "extra-large"
}

drri_hash = {
  name: "Drri",
  color: "purple",
  size: "extra-small"
}

ethar_hash = {
  name: "Ethar",
  color: "green",
  size: "large"
}

furdip_hash = {
  name: "Furdip",
  color: "light-brown",
  size: "medium"
}

grondel_hash = {
  name: "Grondel",
  color: "mauve",
  size: "large"
}

brockt = Planet.new(brockt_hash)
camdoor = Planet.new(camdoor_hash)
drri = Planet.new(drri_hash)
ethar = Planet.new(ethar_hash)
furdip = Planet.new(furdip_hash)
grondel = Planet.new(grondel_hash)

my_system = SolarSystem.new("GDanger")

my_system.mk1_planet_in_sys("Atorp", atorp_hash)

puts "One planet added to the #{my_system.name} solar system:"
my_system.list_planets

planet_array = [brockt, camdoor, drri, ethar, furdip, grondel]

my_system.add_planet_array_in_sys(planet_array)

puts "A whole list of planets added to the #{my_system.name} solar system:"
my_system.list_planets

random_planet = planet_array[rand(0..(planet_array.length-1))]
random_planet2 = planet_array[rand(0..(planet_array.length-1))]

puts "#{random_planet.name} is a #{random_planet.size}, #{random_planet.color} planet with #{random_planet.number_of_moons} moons. It has #{random_planet.air} atmosphere, and #{random_planet.liquid} liquid water. It is populated by #{random_planet.populated}."

puts "The rain on #{random_planet.name} is #{random_planet.weather} when there are clouds but #{random_planet.weather(false)} when there are no clouds."

my_system.distance_between_planets(random_planet, random_planet2)
