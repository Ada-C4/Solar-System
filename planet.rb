class Planet
attr_reader :name, :diameter, :mass, :moons, :orbital_period, :rate_solar_rotation, :distance_from_the_sun
  def initialize(planet_hash)
    @name = planet_hash[:name]
    #miles
    @diameter = planet_hash[:diameter]
    #kg
    @mass = planet_hash[:mass]
    @moons = planet_hash[:moons]
    #days
    @orbital_period = planet_hash[:orbital_period]
    #km/hr
    @rate_solar_rotation = planet_hash[:rate_solar_rotation]
    #miles
    @distance_from_the_sun = planet_hash[:distance_from_the_sun]
  end

  def orbits_around(sun = "The Sun")
    puts "#{@name} orbits around #{sun}."
  end
end
