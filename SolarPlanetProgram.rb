require "./Planets"
require "./SolarSystem"

eclipse_hash = {
  name: "Eclipse",
  atmosphere: "eggs",
  population: "eliptons"
}
eclipse= Planet.new(eclipse_hash)

solarium_hash = {
  name: "Solarium",
  atmosphere: "bubble gum",
  population: "solarians"
}
solarium= Planet.new(eclipse_hash)

barium_hash = {
  name: "Barium",
  atmosphere: "cotton candy",
  population: "solarians"
}
barium= Planet.new(barium_hash)

solarsystem=SolarSystem.new("Andromeda")
solarsystem.add_planet(planet)

eclipse.say_hello
eclipse.say_hello("bob")

solarsystem.print_out
solarsystem.galaxy
