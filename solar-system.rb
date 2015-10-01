class SolarSystem  # class named SolarSystem is created
  attr_reader :name, :star, :life # class has an attribute of planets

  def initialize(solar_info)
    @name = solar_info[:name]
    @star = solar_info[:star]
    @life = solar_info[:life]
    @planets = []  # makes an array
  end

  def add_planet(planet)
    @plantes.push(planet)
  end

  def add_planet_array(planet_array)
    planet_array.each do |planet|
      @planets.push(planet)
    end
  end

  def print_out
    puts "This solar system is called #{@name}. It is inhabited by"
    puts "#{@life} and their sun, #{@star}, keeps them warm."
  end
end

# solar_info = {name: "Crazy",
#               star: "disco ball",
#               life: "toddlers"
# }
#
# crazy = SolarSystem.new(solar_info)
# puts crazy.print_out
