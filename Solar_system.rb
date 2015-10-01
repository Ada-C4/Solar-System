
class Planet
attr_accessor :name, :sand_color, :bird_sound, :num_continents, :num_moons, :water_freezing_point, :solar_ratation, :distance_from_sun

def initialize(name, sand_color, bird_sound, num_continents, num_moons, water_freezing_point, solar_ratation, distance_from_sun)
  @name = name
  @sand_color = sand_color
  @bird_sound = bird_sound
  @num_continents = num_continents
  @num_moons = num_moons
  @water_freezing_point = water_freezing_point
  @solar_ratation = solar_ratation
  @distance_from_sun = distance_from_sun
end

end

earth = Planet.new("earth", "yellow", "tweet", 7, 1, 32, 365, 92.6)
goola = Planet.new("goola", "purple", "goo", 3, 100, 0, 100, 100)
owland = Planet.new("owland", "grey", "hooo", 1, 1, 32, 300, 23.5)
zoolander = Planet.new("zoolander", "beauti", "pose", "too", "brrr", 10000, 0, 0)
icecreamia = Planet.new("icecreamia", "rasberry_vanila", "sprinkles", 50, 1, 10, 200, 1000000000000000000)

def tell_me (planet)
  _moon = "moons"
  if planet.name == "earth"
    "Seriesly, from all the weird planets you chose EARTH...? OK so earth it is"
  end
  if planet.num_moons == 1
    _moon = "moon"
  end
  puts "The color of the sand is #{planet.sand_color} \nand the birds are singing #{planet.bird_sound} #{planet.bird_sound}"
  puts "#{planet.name} has #{planet.num_continents} continets and #{planet.num_moons} #{_moon}. The freezing point of the water is #{planet.water_freezing_point} fahrenheit"
  puts " and it takes about #{planet.solar_ratation} days to rotats around the sun."


end


# made 2 dimention array
planets = [earth, goola, owland, zoolander, icecreamia]
puts "Hello and welcome to".center(60)
puts "non-existing-planets-exapt-earth manu!".center(60)
puts "Here is our list of planets".center(60)

planets.each do |planet|
  puts planet.name
end
found = false
puts "Please choose one, so you can learn more about it"
chosen = gets.chomp.downcase
planets.each do |planet|
  if planet.name == chosen
    tell_me(planet)
    found = true
 end
 end

if found == false
  puts "I don't think the planet you've chose is on the list."
end
