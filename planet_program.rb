require './planet'
require './solar_system'

# Creating the solar system object
solar_system = SolarSystem.new()
puts "Today you will be learning about planets in #{solar_system.name}"

# Data Source = http://www.exploringnature.org/graphics/space/Solar_system_chart72.jpg
# Defining an earth year
earth_year = 365.25 # days

# Creating the planets
# Size is in miles, distance from sun is in millions of miles
earth = { name: "Earth", size: 7926, distance_from_sun: 93, number_of_moons: 1, year_length: earth_year }
earth = Planet.new(earth)

mercury = { name: "Mercury", size: 3031, distance_from_sun: 36, number_of_moons: 0, year_length: 88}
mercury = Planet.new(mercury)

venus = { name: "Venus", size: 7520, distance_from_sun: 67, number_of_moons: 0, year_length: 225}
venus = Planet.new(venus)

mars = { name: "Mars", size: 4217, distance_from_sun: 142, number_of_moons: 2, year_length: 697}
mars = Planet.new(mars)

jupiter = { name: "Jupiter", size: 87_000, distance_from_sun: 484, number_of_moons: 16, year_length: 12 * earth_year}
jupiter = Planet.new(jupiter)

saturn = { name: "Saturn", size: 75_000, distance_from_sun: 888, number_of_moons: 18, year_length: 29*earth_year}
saturn = Planet.new(saturn)

uranus = { name: "Uranus", size: 31_500, distance_from_sun: 1780, number_of_moons: 17, year_length: 84*earth_year }
uranus = Planet.new(uranus)

neptune = { name: "Neptune", size: 31_000, distance_from_sun: 2800, number_of_moons: 16, year_length: 164*earth_year }
neptune = Planet.new(neptune)

# Pure nostalgia from my childhood
pluto = { name: "Pluto", size: 1430, distance_from_sun: 3630, number_of_moons: 5, year_length: 248*earth_year }
pluto = Planet.new(pluto)

# To test my methods, I will add the first 3 planets one by one
# and add the rest as an array of planets
solar_system.add_planet(mercury)
solar_system.add_planet(venus)
solar_system.add_planet(earth)

# Adding a bunch of planets all at once
other_planets = [mars, jupiter, saturn, uranus, neptune, pluto]
solar_system.add_array_planets(other_planets)

# build an array of the planet names (and the quit option)
# Used to give the planet options below a
planet_array = []
solar_system.planets.each do |single_planet|
  planet_array.push(single_planet.name)
end
planet_array.push("Quit")

# Creating a planet hash. This helps us pair the user input to the planet objects later on when we return information
planet_hash = { "Earth" => earth, "Mercury" => mercury, "Venus" => venus, "Mars" => mars, "Jupiter" => jupiter, "Saturn" => saturn, "Uranus" => uranus, "Neptune" => neptune, "Pluto" => pluto }
# This creates a mapping of the number values to the planet objects so that the user can type either the planet name or the number associated with the planet
number_hash = { 3 => earth, 1 => mercury, 2 => venus, 4 => mars, 5 => jupiter, 6 => saturn, 7 => uranus, 8 => neptune, 9 => pluto }

on_going_input = true
planet_number = 1
# Making a while loop that lets the user repeatedly pick planets they would like to learn about

while on_going_input == true
  # Listing the planets for the user
  puts "What planet would you like to learn about?"
  puts "Here are the planets in #{solar_system.name}:"
  planet_array.each do |planet|
    puts "#{planet_number}. #{planet}"
    planet_number += 1
  end
  planet_number = 1
  # Taking input for the planet of interest
  planet_of_interest = gets.chomp
  acceptable_input = false

  numbers = (1...planet_array.length+1).to_a

  # Verifying that the user has actually entered a planet from the list of planet names
  while acceptable_input == false
    if planet_array.include? planet_of_interest.downcase.capitalize
      break
    elsif numbers.include? planet_of_interest.to_i
      break
    else
      puts "Sorry that wasn't one of the options. Try again."
      planet_of_interest = gets.chomp
    end
  end

  # If the user selects quit, break out of the on_going_input while loop
  if planet_of_interest == "Quit" || planet_of_interest == "10"
    on_going_input = false
    break
  end

  # Pulls the correct planet object from planet hash based on the user inputted string
  if planet_of_interest.to_i.to_s == planet_of_interest
    planet_of_interest = number_hash[planet_of_interest.to_i]
  else
    planet_of_interest = planet_of_interest.downcase.capitalize
    planet_of_interest = planet_hash[planet_of_interest]
  end

  # Pluto easter egg!
  if planet_of_interest == pluto
    puts "\n\"Science\" may say Pluto is not a planet, \n but I know my kindergarten education couldn't possibly be wrong!"
    puts "Pluto will always be a planet in my heart."
  end

  # Returns the planet info to the user
  # This method is set up with a default value of "english"
  # If you wanted info to be returned with Metric units you could override with "metric"
  planet_of_interest.teach_about

  # Uses the distance_between_planets method created in solar system to provide a bonus fact to the user
  puts "Would you like a bonus fact? Type Yes."
  response = gets.chomp.downcase
  if response == 'yes' || response == 'y'
    distance_from_earth = solar_system.distance_between_planets(earth,planet_of_interest)
    puts "#{planet_of_interest.name} is #{distance_from_earth} million miles from Earth."
  else
    puts "No bonus fact for you!"
  end
end
