class SolarSystem

require "./PlanetClass"

attr_reader :name, :planets

  def initialize(name)
    @name = name
    @planets = []
  end

  def mk1_planet_in_sys(planet_name, planet_hash)
    planet_name = Planet.new(planet_hash)
    @planets.push(planet_name)
  end

  def add_planet_array_in_sys(planet_array)
    planet_array.each do |pt|
      @planets.push(pt)
    end
  end

  def list_planets
    puts "The planets in the #{@name} solar system are:"
    @planets.each do |plt|
      puts plt.name
    end
  end

  def distance_between_planets(planet_a, planet_b)
    distace_bettween = (planet_a.distance_from_the_sun - planet_b.distance_from_the_sun).abs
    puts "The distance between #{planet_a.name} and #{planet_b.name} is #{distace_bettween} million km's."
  end

end
