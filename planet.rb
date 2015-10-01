class Planet

#the accessor allows methods to be called upon.
attr_accessor :name, :trees, :hip_factor, :distance_from_sun, :number_of_moons, :number_of_rings, :number_of_martians, :solar_rotation

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @trees = planet_hash[:trees]
    @hip_factor = planet_hash[:hip_factor]
    @distance_from_sun = planet_hash[:distance_from_sun]
    @number_of_moons = planet_hash[:number_of_moons]
    @number_of_rings = planet_hash[:number_of_rings] || 4
    @number_of_martians = planet_hash[:number_of_martians]
    @solar_rotation = planet_hash[:solar_rotation]
  end

  def print_out
    puts "#{@name}: A most fascinating planet. This planet has #{@trees} trees and a hip factor of #{@hip_factor}."
  end
end

#create instances of Class planets

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
  #commenting this out so that it will pull default value set above
  # number_of_rings: "390",
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

puts "Greetings, earthing! Welcome to the Seattle Solar System. There are three stellar planets that are in orbit in this solar system."

all_planets = []

# push instances of planets into the array #Planet.new runs the initializer
all_planets.push(Planet.new(fremont))
all_planets.push(Planet.new(ballard))
all_planets.push(Planet.new(cap_hill))

count = 1

puts "Which planet would you like to learn about? Type the number of your selection or type 'exit' to leave the program:"

result = "n"

while result != 0
  count = 1
  all_planets.each do |p|
    puts "#{count}. #{p.name}"
    count += 1
  end
  puts "#{count}. Exit"
  result = gets.chomp.to_i
  all_planets [result -1].print_out
end


#while continue == true
#   if response =! "exit"
#     puts "What planet do you want to learn about next?"


#end
