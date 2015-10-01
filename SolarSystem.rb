class SolarSystem

  def initialize(name, formation_year)
    @name = name
    @planets = []
    @formation_year = formation_year
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def print_out
    @planets.each do |planet|
      puts planet.name
    end
  end

  def add_planets(planets_array)
     planets_array.each do |planet|
       @planets.push(planet)
     end
  end

  def distance_between(planet1, planet2)
    puts "The distance between #{planet1.name} and #{planet2.name} is #{(planet1.distance_from_sun.to_i - planet2.distance_from_sun.to_i).abs} km."
  end

#NEED TO FINISH THIS
  def local_year(planet)
    puts "The local year on #{planet.name} is #{(((Time.now.year - @formation_year) * 365.25)/planet.rate_solar_rotation + @formation_year).to_i}."
  end

end
