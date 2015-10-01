class SolarSystem
  attr_accessor :planets, :name, :formation_year

  def initialize(name = "The Solar System", formation_year = 1234)
    @name = name
    @formation_year = formation_year
    @planets = []
  end

  def add_planet(planet)
    planet.solar_system = self
    @planets.push(planet)
  end

  def add_many_planets(planet_array)
    planet_array.each { |planet| planet.solar_system = self }
    @planets += planet_array
  end

  def distance_between(planet_one, planet_two)
    (planet_one.distance_from_sun - planet_two.distance_from_sun).abs
  end

end
