class SolarSystem
  attr_accessor :name, :size, :planets

  def initialize(info_hash)
    @name = info_hash[:name]
    @size = info_hash[:size]
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def add_planets(new_planet_array)
    new_planet_array.each do |planet|
      @planets.push(planet)
    end
  end

end
