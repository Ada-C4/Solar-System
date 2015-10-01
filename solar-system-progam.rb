require "./planet.rb"
require "./solar_system.rb"

#this is required even though Ruby can pull it from the planet.rb file. Anything that is a variable that's defined in 1 file will not exist in another file.
fremont = {

  name: "Fremont",
  trees: "10,000",
  hip_factor: "so-so",
  distance_from_sun: "30,000 miles",
  number_of_moons: "12",
  number_of_rings: "32",
  number_of_martians: "32,000",
  solar_rotation: "43",
}

ballard = {
  name: "Ballard",
  trees: "800",
  hip_factor: "high",
  distance_from_sun: "48,000",
  number_of_moons: "2",
  number_of_rings: "390",
  number_of_martians: "43,000",
  solar_rotation: "44",
}

cap_hill = {

  name: "Capitol Hill",
  trees: "10",
  hip_factor: "very high",
  distance_from_sun: "30,000 miles",
  number_of_moons: "12",
  number_of_rings: "32",
  number_of_martians: "32,000",
  solar_rotation: "43",
}

#this line will allow Ruby to populate "Seattle" as the info when it calls the name key in the hash of the solar_system file
s= Solarsystem.new({name: "Seattle"})
#this will allow Ruby to call upon the 'add_new_planet' method in the solar_system.rb file and populate a new planet with Fremont's info
s.add_new_planet(Planet.new(fremont))
s.add_new_planet(Planet.new(ballard))
s.add_new_planet(Planet.new(cap_hill))

#print out the planets method defined in the solary system file
puts s.planets
