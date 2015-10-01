class SolarSystem

  attr_accessor :name, :diameter, :mass, :moons

  def initialize(solarsystemname, size)
    @solarsystemname = solarsystemname
    @size = size
    @planets = []
    @array_of_planets = []
  end

  def add_new_planet(planet)
    @planets.push(planet)
  end

  def add_planets(planet_hash)
    @planets.each do |plnt|
      @array_of_planets.push(plnt)
  end
end
