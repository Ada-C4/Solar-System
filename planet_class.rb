class Planet
  attr_accessor :name, :diameter, :distance_from_sun, :number_of_moons, :solar_rotation, :badass

  def initialize(planet_hash, badass = true)
    @name = planet_hash[:name]
    @diameter = planet_hash[:diameter]
    @distance_from_sun = planet_hash[:distance_from_sun]
    @number_of_moons = planet_hash[:number_of_moons]
    @solar_rotation = planet_hash[:solar_rotation]
    @badass = planet_hash[:badass]
  end

  def print_out
    puts "Let's talk about #{@name}."
    puts "\n"
    puts "#{@name} has a diameter of #{@diameter} and #{@number_of_moons} moons. It is #{@distance_from_sun} miles away from the sun, rotating around the sun for #{@solar_rotation} earth years in one rotation."
      if badass == false
        puts "Interestingly, this planet that is not badass at all. That is rare, and most likely due to its frigid temperatures, which make me sad."
      end
    puts "\n\n\n"
  end

end
