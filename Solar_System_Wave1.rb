class Planet
  attr_accessor :name, :diameter, :distance_from_sun, :number_of_moons, :solar_rotation

  def initialize(name, diameter, distance_from_sun, number_of_moons, solar_rotation)
    @name = name
    @diameter = diameter
    @distance_from_sun = distance_from_sun
    @number_of_moons = number_of_moons
    @solar_rotation = solar_rotation
  end

  def print_out
    puts "Let's talk about #{@name}."
    puts "\n"
    puts "#{@name} has a diameter of #{@diameter} and #{@number_of_moons} moons. It is #{@distance_from_sun} miles away from the sun, rotating around the sun for #{@solar_rotation} earth years in one rotation."
    puts "\n\n\n"
  end

end

mercury = Planet.new("Mercury", 3031, 36, 0, 0.24)
venus = Planet.new("Venus", 7521, 67, 0, 0.62)
earth = Planet.new("Earth", 7926, 93, 1, 365.24)
mars = Planet.new("Mars", 4217, 142, 2, 697)
jupiter = Planet.new("Jupiter", 88730, 484, 16, 11.9)
saturn = Planet.new("Saturn", 74900, 888, 18, 29.5)
uranus = Planet.new("Uranus", 31763, 1780, 17, 84)
neptune = Planet.new("Neptune", 31775, 2800, 16, 165)
pluto = Planet.new("Pluto", "n/a", "n/a", "n/a", "n/a")

nets = []
nets.push(mercury, venus, earth, mars, jupiter, saturn, uranus, neptune)


def call_to_planets(planet_array)
  puts "Hello! Check out the available planets to learn about:"
  line_width = 60
  count = 1
  planet_array.each do |planet|
    puts "#{count}. #{planet.name}".center(line_width)
    count += 1
  end
  puts "Which one interests you? Type the number or \"exit\" to quit:"
  response = gets.chomp
  return response
end

user_choice = call_to_planets(nets)


while user_choice.downcase != "exit"
  puts "I can't do this off the top of my head. Let me consult my planet dictionary..."

  nets[user_choice.to_i - 1].print_out

  user_choice = call_to_planets(nets)
end

puts "Hope you learned something! Even if it was just that Pluto is not a planet. RIP"
