# content copied from solar-system-query.rb

class Planet
  attr_accessor :name, :french_name, :diameter_in_miles, :moons, :running_water, :position_from_sun, :revolution_rate, :distance_from_sun

  def initialize(name, french_name, diameter_in_miles, moons, running_water, position_from_sun, revolution_rate, distance_from_sun)
    @name = name
    @french_name = french_name
    @diameter_in_miles = diameter_in_miles
    @moons = moons
    @running_water = running_water
    @position_from_sun = position_from_sun
    @revolution_rate = revolution_rate
    @distance_from_sun = distance_from_sun
  end

  def planet_info
    line_width = 60
    puts ""
    puts "Planet name: #{@name}".center(line_width)
    puts "Nom français: #{@french_name}".center(line_width)
    puts "Diameter:".ljust(line_width/2) + "#{@diameter_in_miles} miles".rjust(line_width/2)
    puts "Number of moons:".ljust(line_width/2) + "#{@moons}".rjust(line_width/2)
    puts "Running water:".ljust(line_width/2) + "Yes".rjust(line_width/2) if running_water
    puts "Running water:".ljust(line_width/2) + "No".rjust(line_width/2) if !running_water
    puts "Position from sun:".ljust(line_width/2) +  "#{@position_from_sun}".rjust(line_width/2)
    puts "Time to revolve around sun:".ljust(line_width/2) +  "#{@revolution_rate}".rjust(line_width/2)
    puts "Distance from Sun:".ljust(line_width/2) + "#{@distance_from_sun} AU".rjust(line_width/2)
    puts ""
  end

end

mercury = Planet.new("Mercury", "Mercure", 3032, 0, false, "1st", "87.96 Earth days", 0.39)
venus = Planet.new("Venus", "Vénus", 7520, 0, false, "2nd", "224.68 Earth days", 0.723)
earth = Planet.new("Earth", "Terre", 7900, 1, true, "3rd", "365.26 Earth days", 1)
mars = Planet.new("Mars", "Mars", 4212, 2, true, "4th", "686.96 Earth days", 1.524)
jupiter = Planet.new("Jupiter", "Jupiter", 88730, 63, false, "5th", "11.862 Earth years", 5.203)
saturn = Planet.new("Saturn", "Saturne", 74900, 62, false, "6th", "29.456 Earth years", 9.539)
uranus = Planet.new("Uranus", "Uranus", 31763, 27, false, "7th", "84.07 Earth years", 19.18)
neptune = Planet.new("Neptune", "Neptune", 30775, 13, false, "8th", "164.81 Earth years", 30.06)

planets = [mercury, venus, earth, mars, jupiter, saturn, uranus, neptune]

count = 1
puts "Let's learn about planets!"
puts "Here's a list that you can learn about:"
planets.each do |planet|
  puts "#{count}. #{planet.name}"
  count += 1
end

puts "Which planet (number or name) would you like to learn about?"
print "Or if you're done learning about planets, type 'exit'. "
planet_choice = gets.chomp

while !planet_choice.downcase.include?("exit")
  planets.each do |planet|
    if planet_choice.downcase == planet.name.downcase
      planet.planet_info
    end
  end

  if planet_choice.to_i >= 1 && planet_choice.to_i <= planets.length
    planets[planet_choice.to_i - 1].planet_info
  elsif planet_choice.downcase == "list"
    puts ""
    count = 1
    planets.each do |planet|
      puts "#{count}. #{planet.name}"
      count += 1
    end
  end
  print "What next? To see the list of planets again, type 'list'. Or type 'exit'. "
  planet_choice = gets.chomp
end

### other example ###
# https://gist.github.com/kariabancroft/db133c8b56a2b091be4d
