#copy then contents of your solar system file here.


class Solarsystem
  attr_accessor :name, :planets

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @planets = []
  end
#this is what line 8 is doing.
  # def planets
  #   return @planets
  # end

  def add_new_planet(planet)
    @planets.push(planet)
  end

  def add_many_planets(many_planets)
    many_planets.each do |planet|
    @aplanets.push(planet)
    end
  end

end
