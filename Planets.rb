class Planet
  attr_accessor :name, :atmosphere, :population

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @atmosphere = planet_hash[:atmosphere]
    @population = planet_hash[:population]
    @planets = []
  end

  def say_hello(name="Alien")
    puts "welcome #{name}!"
  end

  def print_out
    puts "This is planet #{@name}, it's atmosphere is composed of #{@atmosphere}. It's population make up is #{@population}."
  end

  def add_planet(planet)
  @planets.push(planet)
  end

  def add_planet_array(planet_array)
  planet_array.each do |planet|
  @planets.push(planet)
end
