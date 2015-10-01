class SolarSystem
  attr_accessor :name, :planets
  # default value for the name of the solar system
  def initialize(name = "The Solar System")
    @name = name
    @planets = []
  end
  # method for adding a single planet
  def add_planet(planet)
    @planets.push(planet)
  end
  # method for adding an array of planets
  # Allows a user to add a bunch of planets at once
  def add_array_planets(array_planets)
    array_planets.each do |new_planet|
    @planets.push(new_planet)
    end
  end
  # method for calculating the distance between any two planets
  def distance_between_planets(planet_1, planet_2)
    distance = (planet_1.distance_from_sun - planet_2.distance_from_sun).abs
    return distance
  end
end
