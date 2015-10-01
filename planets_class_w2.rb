require "colorize"

class Planet

  attr_accessor :name, :color, :breed, :personality, :inhabitants, :culture, :leash_length

  def initialize(planet_hash)
    @name = planet_hash[:name].colorize(:blue)
    @color = planet_hash[:color]
    @breed = planet_hash[:breed]
    @personality = planet_hash[:personality]
    @inhabitants = planet_hash[:inhabitants]
    # substitute for spin
    @culture = planet_hash[:culture]
    # substitute for distance_from_the_sun
    @leash_length = planet_hash[:leash_length]
  end

# default variable attribute
  def print_out(audience = :human)
      if audience == :human
        puts "Hello, Homo Sapien!"
      else
        puts "Hello, Non-Human Species"
      end
      puts "Your travels through the Universe of Pets have brought you to the planet: #{@name}"
      puts "Welcome!"
      puts "Here are some fun facts about planet #{@name}:"
      puts "#{@name} is #{@color} in color and is of the #{@breed} Galaxy."
      puts "#{@name} is the #{@personality} in the solar system."
      puts "Currently, there are #{@inhabitants} flees residing on #{@name}"
      puts "The local culture can be described as #{@culture}."
      puts "All the planets in this universe orbit around one central point called: Human."
      puts "#{@name}'s distance from Human is #{@leash_length} feet."
  end

end

  fiona = {
    name: "Fiona",
    color: "Apricot",
    breed: "Poodle-Mutt",
    personality: "Princess",
    inhabitants: 0,
    culture: "Me, Me Me!",
    leash_length: 6
  }

  finnigan = {
    name: "Finnigan",
    color: "Charcoal",
    breed: "Doxie-Poo",
    personality: "Co-Dependent",
    inhabitants: 0,
    culture: "high anxiety and always on alert",
    leash_length: 8
  }

  noah = {
    name: "Noah",
    color: "Tuxedo black and white",
    breed: "Siamese",
    personality: "Extrovert",
    inhabitants: 2,
    culture: "friendly and sociable",
    leash_length: "none"
  }

  fiona_object = Planet.new(fiona)
  #fiona = fiona_object.name

  finnigan_object = Planet.new(finnigan)
  #finnigan = finnigan_object.name

  noah_object = Planet.new(noah)
  #noah= noah_object.name

puts "Hello, which planet in the Universe of Pets would you like to learn about Fiona, Finnigan, or Noah?"
puts "If you would rather not learn about a planet enter \"No\""
response = gets.chomp

while response != "No"
  if response == "Fiona"
    fiona_object.print_out
  elsif response == "Finnigan"
    finnigan_object.print_out
  elsif response == "Noah"
    noah_object.print_out
  else
    puts "Sorry that is not a Universe of Pets planet."
  end
  puts "If you would like to learn about another planet type it's name, otherwise type \"No\""
  response = gets.chomp
end
    puts "BYE! Happy timey, whimey, wibbly, wobbly travels through space and time!"

# puts fiona_object.print_out(:alien)
