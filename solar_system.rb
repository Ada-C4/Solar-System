class SolarSystem
  attr_accessor :planets, :formation_year

  def initialize(formation_year = 1979)
    @planets = []
    @formation_year = formation_year
  end

  def add_a_planet(planet)
    @planets.push(planet)
  end

  def add_many_planets(planet_array)
    @planets = @planets + planet_array
  end

  def distance(planet1, planet2)
    distance = (planet1.distance_from_sun - planet2.distance_from_sun).abs
    puts "The distance between #{planet1.name} and #{planet2.name } is #{distance} * 10^6 km."
    return distance
  end

  def print_fact_sheet
    # Print a menu of options
    puts "PLANET FACT SHEET".center(64)
    puts "Information from http://nssdc.gsfc.nasa.gov/planetary/factsheet/"
    puts "Type the number of the planet to learn more"
    @planets.length.times do |num|
      puts "#{num + 1}. #{@planets[num].name}"
    end
    puts "0. Exit"
    # Get user input and convert it to the
    # planet's index in @planets array
    choice_index = 100
    while choice_index >= 0
      print "Your choice: "
      choice_index = gets.chomp.to_i - 1
      # Validate user input
      while choice_index < -1 || choice_index >= @planets.length
        puts "Invalid entry. Please enter a number from 0 to #{@planets.length} * 10^6 km"
        print "Your choice: "
        choice_index = gets.chomp.to_i - 1
      end
      # Print fun planet facts based on user input
      # Or if the option was -1 then quit
      if choice_index == -1
        exit
      else
        @planets[choice_index].print_formatted
      end
    end
  end

end
