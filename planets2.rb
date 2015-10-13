class Planet

  attr_accessor :name, :diameter, :mass, :number_of_moons, :color, :distance_from_the_sun

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @diameter = planet_hash[:diameter]
    @mass = planet_hash[:mass]
    @color = planet_hash[:color]
    @number_of_moons = planet_hash[:number_of_moons]
    @distance_from_the_sun = planet_hash[:distance_from_the_sun]
  end

  def number_of_moons(number_of_moons = 0)
      @number_of_moons = number_of_moons
  end

  def about
    puts "I am a planet named #{@name}! I have a diameter of #{@diameter} meters and a mass of #{@mass} kilograms."
    puts "I have #{@number_of_moons} moons and I am #{@color}."
    puts "I am #{@distance_from_the_sun} meters from the sun"
  end

end
