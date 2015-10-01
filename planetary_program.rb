require "./planets"
require "./solarsystem"

# create solar system instance

the_core = SolarSystem.new("The Core")

# these define my planets

londinium_hash = {
  name: "Londinium",
  sun_orbited: "the White Sun",
  date_terraformed: 2220,
  diameter: "18000km",
  mass: "1.210x10^22 tonnes",
  gravity: "1.0145 G",
  orbital_position: 2,
  orbital_distance: "1346380830km",
  orbital_periods: "27 years",
  region: "Central Planets",
  population: 4510000000,
}
londinium = Planet.new(londinium_hash)
londinium.add_moons("Colchester", "Balkerne")
londinium.add_cities_towns("New Cardiff", "The House")
the_core.add_planet(londinium)

sihnon_hash = {
  name: "Sihnon",
  sun_orbited: "the White Sun",
  date_terraformed: 2220,
  diameter: "12881km",
  mass: "5.987x10^21 tonnes",
  gravity: "0.9802 G",
  orbital_position: 3,
  orbital_distance: "1402480031km",
  orbital_periods: "28.7 years",
  region: "Central Planets",
  population: 5330000000,
}
sihnon = Planet.new(sihnon_hash)
sihnon.add_moons("Airen", "Xiaojie", "Xiansheng", "Yunnan")
sihnon.add_cities_towns("Lu'Weng")
the_core.add_planet(sihnon)

ariel_hash = {
  name: "Ariel",
  sun_orbited: "the White sun",
  date_terraformed: 2266,
  diameter: "13016km",
  mass: "6323x10^21 tonnes",
  gravity: "1.0140 G",
  orbital_position: 11,
  orbital_distance: "3085456069km",
  orbital_periods: "93.67 years",
  region: "Central Planets",
  population: 3615995500,
}
ariel = Planet.new(ariel_hash)
ariel.add_moons("Ariopolis", "Shiva", "Poseidon")
ariel.add_cities_towns("Ariel City")
the_core.add_planet(ariel)

bellerophon_hash = {
  name: "Bellerophon",
  sun_orbited: "the White Sun",
  date_terraformed: 2266,
  diameter: "12266km",
  mass: "5.55x1x10^21 tonnes",
  gravity: "1.0031 G",
  orbital_position: 10,
  orbital_distance: "2917158031465km",
  orbital_periods: "86.11 years",
  region: "Central Planets",
  population: 3124510000,
}
bellerophon = Planet.new(bellerophon_hash)
bellerophon.add_moons("Tyrins", "Hanthus", "Parth")
bellerophon.add_cities_towns("Unknown")
the_core.add_planet(bellerophon)

osiris_hash = {
  name: "Osiris",
  sun_orbited: "the White Sun",
  date_terraformed: 2256,
  diameter: "13523km",
  mass: "6.964x10^21 tonnes",
  gravity: "1.0345 G",
  orbital_position: 7,
  orbital_distance: "2019571245km",
  orbital_periods: "49.60 years",
  region: "Central Planets",
  population: 3980000000,
}
osiris = Planet.new(osiris_hash)
osiris.add_moons("Epeuva", "Tannhauser")
osiris.add_cities_towns("Capital City")
the_core.add_planet(osiris)

liann_jiun_hash = {
  name: "Liann Jiun",
  sun_orbited: "the White Sun",
  date_terraformed: 2255,
  diameter: "13957km",
  mass: "7.172x10^21 tonnes",
  gravity: "1.0002 G",
  orbital_position: 4,
  orbital_distance: "1626876836km",
  orbital_periods: "35.86 years",
  region: "Central Planets",
  population: 3750000000,
}
liann_jiun = Planet.new(liann_jiun_hash)
liann_jiun.add_moons("Tiantan", "Fu")
liann_jiun.add_cities_towns("Unknown")
the_core.add_planet(liann_jiun)

bernadette_hash = {
  name: "Bernadette",
  sun_orbited: "the White Sun",
  date_terraformed: 2240,
  diameter: "10582km",
  mass: "4.114x10^21 tonnes",
  gravity: "0.9982 G",
  orbital_position: 1,
  orbital_distance: "1234182428km",
  orbital_periods: "23.70 years",
  region: "Central Planets",
  population: 3754542000,
}
bernadette = Planet.new(bernadette_hash)
bernadette.add_moons("Nautilus", "Spinrad")
bernadette.add_cities_towns("New Paris", "New Tombstone")
the_core.add_planet(bernadette)

persephone_hash = {
  name: "Persephone",
  sun_orbited: "Lux",
  date_terraformed: 2308,
  diameter: "14613km",
  mass: "8.096x10^21 tonnes",
  gravity: "1.0300 G",
  orbital_position: 1,
  orbital_distance: "5495784km",
  orbital_periods: "0.331287 years",
  region: "Central Planets",
  population: 2570000000,
}
persephone = Planet.new(persephone_hash)
persephone.add_moons("Hades", "Renao")
persephone.add_cities_towns("Eavesdown Docks", "Southdown Abbey")
the_core.add_planet(persephone)

white_sun_hash = {
  name: "White Sun",
  population: 39477459000,
}
white_sun = Planet.new(white_sun_hash)
the_core.add_sun(white_sun)

the_core.add_planets

# interactive portion

# the_core.planets.each do |planet|
#   puts the_core.local_year(planet).to_i
# end

puts "Hello, I am your guide to The Verse. I can tell you're new to our solar system. Let's get you started with the basics."
puts
puts "Please select a planet from the following list to learn more about it:"

planet_list = [londinium, sihnon, ariel, bellerophon, osiris, liann_jiun, bernadette, persephone]
planet_list_names = ["londinium", "sihnon", "ariel", "bellerophon", "osiris", "liann_jiun", "bernadette", "persephone"]

def get_distance(planet_list, planet_choice, the_core)
  puts "Would you like to calculate the distance between #{planet_list[planet_choice.to_i - 1].name} and another planet? (y/n)"
  print " > "
  distance = gets.chomp.downcase
  if distance == "y"
    puts "Can I have another planet (as a number 1-8)??"
    print " > "
    planet_one = gets.chomp
      if (1..8).include?(planet_one.to_i) && planet_one.to_i.to_s == planet_one || planet_one.to_i.to_s + "." == planet_one
        puts "The distance between #{planet_list[planet_choice.to_i - 1].name} and #{planet_list[planet_one.to_i - 1].name} is: #{the_core.distance_calc(planet_list[planet_choice.to_i - 1], planet_list[planet_one.to_i - 1])} km."
      else
        puts "I don't understand."
      end
    elsif distance == "n"
      puts "Okay, nevermind."
    else
      puts "I don't understand. Nevermind."
  end
end

while true
  0.upto(planet_list.length - 1).each do |planet|
    puts "#{planet + 1}. #{planet_list[planet].name}"
  end

  puts
  print " > "
  planet_choice = gets.chomp

  if planet_choice.empty?
    break

  elsif (1..8).include?(planet_choice.to_i) && planet_choice.to_i.to_s == planet_choice || planet_choice.to_i.to_s + "." == planet_choice
    puts
    puts "Ah, #{planet_list[planet_choice.to_i - 1].name}. Excellent choice."
    puts
    puts "The current local year in #{planet_list[planet_choice.to_i - 1].name} is: #{the_core.local_year(planet_list[planet_choice.to_i - 1]).to_i}."
    planet_list[planet_choice.to_i - 1].print_stuff
    get_distance(planet_list, planet_choice, the_core)
    puts
    puts "You got all that, right? Good, we can move on to the next planet. Please select a planet from the list or press 'Enter' to exit."
    puts

  elsif planet_list_names.include?(planet_choice.downcase)

    planet_list.each do |variable|
      if variable.name.downcase == planet_choice.downcase
        puts variable.print_stuff
        get_distance(planet_list, planet_choice, the_core)
        puts
        puts "You got all that, right? Good, we can move on to the next planet. Please select a planet from the list or press 'Enter' to exit."
      end
    end

  else
    puts "I don't understand. Maybe that's enough training. You can just report to the Serenity to join the others."
    puts
  end
end
