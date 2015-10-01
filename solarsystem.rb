class Solar_system
  attr_accessor :planet

  def initialize(planet)
      @planet = []
  end

  def add_planet(planet)
      @planet.push(planet)
  end
  def add_array(planets_array)
      planets_array.each do |planet|
      @planet.push(planet)
    end

  end
