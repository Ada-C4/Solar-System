require "./planet"
require "./solar_system.rb"

# Setting up the new planets and the array containing them.

pirates = []

mary_read_h = {name: "Mary Read", distance_from_the_sun: 786, solar_rotation: 75, pillage: 348, dubloons: 2398, sea_biscuits: 125, rum: 598, parrots: 56, pirates: 697}

mary_read = Planet.new(mary_read_h)
pirates.push(mary_read)

anne_bonny_h = {name: "Anne Bonny", distance_from_the_sun: 347, solar_rotation: 165.7, pillage: 7896, dubloons: 43567, sea_biscuits: 350, rum: 7689, parrots: 47.2, pirates: 500}

anne_bonny = Planet.new(anne_bonny_h)
pirates.push(anne_bonny)

sadie_the_goat_h = {name: "Sadie the Goat", distance_from_the_sun: 65, solar_rotation:75, pillage: 2, dubloons: 45, sea_biscuits: 57, rum: 99, parrots: 12, pirates: 13}

sadie_the_goat = Planet.new(sadie_the_goat_h)
pirates.push(sadie_the_goat)

black_bart_h = {name: "Black Bart", distance_from_the_sun: 27.8, solar_rotation: 3, pillage: 4589, dubloons: 56, sea_biscuits: 22.37, rum: 698, parrots: 34, pirates: 12}
black_bart = Planet.new(black_bart_h)
pirates.push(black_bart)

blackbeard_h = {name: "Blackbeard", distance_from_the_sun: 8976, solar_rotation: 14.67, pillage: 567, dubloons: 6987, sea_biscuits: 467, rum: 5000, parrots: 12, pirates: 69}
blackbeard = Planet.new(blackbeard_h)
pirates.push(blackbeard)

billy_the_kidd_h = {name: "Billy the Kidd", distance_from_the_sun: 800, solar_rotation: 45.6, pillage: 345, dubloons: 21345, sea_biscuits: 637, rum: 900, parrots: 569, pirates: 234}
billy_the_kidd = Planet.new(billy_the_kidd_h)
pirates.push(billy_the_kidd)

# Set up solar-system

pirate_galaxy = SolarSystem.new("Pirate Galaxy", "Jack Sparrow")

puts "Ahoy there! I've compiled some information on planet-ships in the #{pirate_galaxy.name}. Which planet-ship would you be learnin' about today, lass? i.e. '1', '2', etc."

count = []

# Function to print out list of all planet-ships

def pirate_list(p, c)
  count = 0
  pirate = 0
  p.each do
    count += 1
    puts "#{count}. #{p[pirate].name}"
    pirate += 1
    c.push(count.to_s)
  end

  print ">"
end

# Call the function, get user input

puts pirate_list(pirates, count)

user_choice = gets.chomp

# Loops until the user types DONE

while user_choice != "DONE"
  unless count.include?(user_choice)
    puts "I didn't quite get that. Which planet-ship were ya hankerin'  to be learnin' about?"
    user_choice = gets.chomp.upcase
  end
  puts
  puts pirates[user_choice.to_i - 1].info
  puts
  puts "Do you want to choose another planet-ship? If not, type 'DONE'.   As a reminder, here are the different ships that be sailin' this  galactic ocean: "
  puts pirate_list(pirates, count)
  user_choice = gets.chomp.upcase
end

# Get user input to tell distance between two planets
puts
puts
puts "Are you interested in how the planets relate to each other? I can tell you how far away from each other any two planets are. Just let me know which you be wantin' to know about, usin' their numbers, if ya please). Here's the list again, to remind ya."

puts pirate_list(pirates, count)

puts "For ya first planet? "
planet1 = gets.chomp
unless count.include?(planet1)
  puts "I didn't quite get that. Which planet-ship were ya hankerin'  to be learnin' about?"
  user_choice = gets.chomp.upcase
end

puts "And for the second?"
planet2 = gets.chomp
unless count.include?(planet2)
  puts "I didn't quite get that. Which planet-ship were ya hankerin'  to be learnin' about?"
  user_choice = gets.chomp.upcase
end

puts pirate_galaxy.distance_between(pirates[planet1.to_i - 1], pirates[planet2.to_i - 1])
