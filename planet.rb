# Creating the planet class
class Planet
  attr_accessor :name, :size, :distance_from_sun, :number_of_moons, :year_length

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @size = planet_hash[:size] # miles wide
    @distance_from_sun = planet_hash[:distance_from_sun] # millions of miles
    @number_of_moons = planet_hash[:number_of_moons]
    @year_length = planet_hash[:year_length] # in Earth days # This is the same as the rate of solar rotation
  end

  # This method returns information about the planet to the user when called
  # The method defaults to english units, but can be overwritten with "metric" to return km instead of miles
  def teach_about(units = "english")

    # Corrects "moons" to "moon" if there is only one moon
    if @number_of_moons == 1
      moon_grammar = "moon"
    else
      moon_grammar = "moons"
    end

    # Returns the information to the user in metric if the default attribute is overridden to metric. Otherwise, returns english units
    if units == "metric"
      # Returns the information to the user in Metric
      puts "You selected to learn more about #{@name}."
      puts "#{@name} is #{(@size*1.61).round(2)} kilometers across."
      puts "It has #{@number_of_moons} #{moon_grammar} and is #{(@distance_from_sun*1.61).round(2)} million kilometers away from the sun."
      puts "#{@name} takes #{@year_length} Earth days to orbit the sun.\n\n"
    else
      puts "You selected to learn more about #{@name}."
      puts "#{@name} is #{@size} miles across."
      puts "It has #{@number_of_moons} #{moon_grammar} and is #{@distance_from_sun} million miles away from the sun."
      puts "#{@name} takes #{@year_length} Earth days to orbit the sun.\n\n"
    end
  end
end
