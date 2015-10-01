class SolarSystem

attr_accessor :name, :distance_from_the_sun

  def initialize(info_hash)
   @name = info_hash[:name]
   @distance_from_the_sun = info_hash[:distance_from_the_sun]
   @planets = []
  end

  def add_planet(planet)
   @planet.push(planet)
  end

  def add_array(array_planet)
   array_planet.each do |planet|
     @planet.push(planet)
     puts planet.name
  end
  end

  def print_array
      @planets.each do |planet|
        puts planet.name
      end
  end
