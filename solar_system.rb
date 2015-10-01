class SolarSystem

  attr_accessor :name, :sun, :planets

  def initialize(name, sun)
    @name = name
    @sun = sun
    @planets = []
    @distance = 0
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def array_add(p_array)
    p_array.each do |planet|
      @planets.push(planet)
    end
  end

  def distance_between(planet1, planet2)
    distance = planet1.distance_from_the_sun - planet2.distance_from_the_sun
    @distance = distance.abs
    puts "The distance between #{planet1.name} and #{planet2.name} is #{@distance} thousand kilometers."
  end

end
