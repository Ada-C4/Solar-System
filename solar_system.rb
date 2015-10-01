class SolarSystem
attr_reader :name, :planets_array
  def initialize(name, formation_year)
    @name = name
    @planets = []
    @formation_year = formation_year
  end

  def add_one_planet(planet)
    @planets.push(planet)
  end

  def add_planet_array(array)
    array.each do |planet|
      @planets.push(planet)
    end
  end

  def distance_between(planet_1, planet_2)
    difference = (planet_1.distance_from_the_sun - planet_2.distance_from_the_sun).to_i.abs
    puts "The distance between #{planet_1.name} and #{planet_2.name} is #{difference} miles."
  end

  def print_out
    puts "This is a solar system named #{@name}.  Its formation occurred #{@formation_year.to_i} Earth Years ago."
    puts "#{@name} contains the following planets:"

    @planets.each do |planets|
      puts planets.name
    end
  end
end
