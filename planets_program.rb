require "./solarsystem"
require "./planets"
require "colorize"

galaxy_hash = {name: "The Galaxy",
                size: "10 billion stars"
              }
the_galaxy = SolarSystem.new(galaxy_hash)
puts the_galaxy.name

tatooine_hash = {
  name: "Tatooine",
  color: "orange",
  species: "humans",
  climate: "desert",
  num_moons: 2,
  industry: "moisture farming",
  most_famous_inhabitant: "Luke Skywalker",
  solar_rotation_rate: "23 hours",
  distance_from_the_sun: "is not far enough from its two suns"
}
Tatooine = Planet.new(tatooine_hash)

kashyyyk_hash = {
  name: "Kashyyyk",
  color: "green",
  species: "wookies",
  climate: "tropical forest",
  num_moons: 3,
  industry: "making computer parts",
  most_famous_inhabitant: "Chewbacca",
  solar_rotation_rate: "26 hours",
  distance_from_the_sun: "is close to the sun; it is always summer there"
}
Kashyyyk = Planet.new(kashyyyk_hash)

alderaan_hash = {
  name: "Alderaan",
  color: "blue and green",
  species: "humans",
  climate: "temperate",
  num_moons: 1,
  industry: "manufacturing goods and electronics",
  most_famous_inhabitant: "Princess Leia",
  solar_rotation_rate: "24 hours",
  distance_from_the_sun: "used to be a civilized distance from the sun, but the Empire destroyed it"
}
Alderaan = Planet.new(alderaan_hash)

dagobah_hash = {
  name: "Dagobah",
  color: "gray-green",
  species: "insects",
  climate: "swamp",
  num_moons: 1,
  industry: "doing, not trying",
  most_famous_inhabitant: "Yoda, who was a temporary inhabitant while he hid from the Empire",
  solar_rotation_rate: "23 hours",
  distance_from_the_sun: "is far away enough from the sun that the swamp never dries out"
}
Dagobah = Planet.new(dagobah_hash)

coruscant_hash = {
  name: "Coruscant",
  color: "gray",
  species: "humans",
  climate: "completely citified",
  num_moons: 4,
  industry: "government",
  most_famous_inhabitant: "The Emperor",
  solar_rotation_rate: "24 hours",
  distance_from_the_sun: "is a standard distance from the sun"
}
Coruscant = Planet.new(coruscant_hash)

endor_hash = {
  name: "Endor",
  color: "green",
  species: "ewoks",
  climate: "jungle",
  num_moons: 0,
  industry: "medicinal goods",
  most_famous_inhabitant: "that really cute ewok who makes friends with Princess Leia",
  solar_rotation_rate: "18 hours",
  distance_from_the_sun: "is actually a moon itself"
}
Endor = Planet.new(endor_hash)

hoth_hash = {
  name: "Hoth",
  color: "white",
  species: "wampas and tauntauns",
  climate: "frozen",
  num_moons: 3,
  industry: "freezing one's butt off while hiding from the Empire",
  most_famous_inhabitant: "that wampa that messed up Luke's face",
  solar_rotation_rate: "23 hours ",
  distance_from_the_sun: "is so far from the sun that it's unclear whether it even has a sun"
}
Hoth = Planet.new(hoth_hash)

corellia_hash = {
  name: "Corellia",
  color: "blue and green",
  species: "humans",
  climate: "temperate",
  num_moons: 3,
  industry: "making starships",
  most_famous_inhabitant: "Han Solo",
  solar_rotation_rate: "25 hours",
  distance_from_the_sun: "is a normal distance from the sun"
}
Corellia = Planet.new(corellia_hash)

planets = [Tatooine, Kashyyyk, Alderaan, Dagobah, Coruscant, Endor, Hoth, Corellia]
the_galaxy.add_planets(planets)
puts the_galaxy.planets

Tatooine.is_in_one_piece(Tatooine)
Alderaan.is_in_one_piece(Alderaan, false)

puts "Which planet would you like to learn about today?"
puts "Please enter the name or number of the planet that you'd like to learn about, or type 'Exit' to exit"
num = 1
planets.each do |planet|
  puts "#{num}. #{planet.name}"
  num += 1
end
puts "#{num}. Exit"
planet = gets.chomp

# I should probably convert this to use the array for efficiency, but I like letting the user type in a planet name
while planet != num.to_s && planet.downcase != "exit"
  if planet == "1" || planet.downcase == "=tatooine"
    Tatooine.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "2" || planet.downcase == "kashyyyk"
    Kashyyyk.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "3" || planet.downcase == "alderaan"
    Alderaan.print_past_tense
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "4" || planet.downcase == "dagobah"
    Dagobah.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "5" || planet.downcase == "coruscant"
    Coruscant.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "6" || planet.downcase == "endor"
    Endor.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "7" || planet.downcase == "hoth"
    Hoth.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  elsif planet == "8" || planet.downcase == "corellia"
    Corellia.print_out
    puts "Would you like to learn about another planet?"
    planet = gets.chomp
  else
    puts "That's not one of our planets! Would you like to learn about a planet?"
    planet = gets.chomp
  end
end


puts String.color_samples
