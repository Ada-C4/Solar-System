class Planet
  attr_reader :name, :mass, :diameter, :length_of_day, :distance_from_sun, :mean_temperature, :number_of_moons, :ring_system, :orbital_period

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @mass = planet_hash[:mass]
    @diameter = planet_hash[:diameter]
    @length_of_day = planet_hash[:length_of_day]
    @distance_from_sun = planet_hash[:distance_from_sun]
    @mean_temperature = planet_hash[:mean_temperature]
    @number_of_moons = planet_hash[:number_of_moons]
    @ring_system = planet_hash[:ring_system]
    @orbital_period = planet_hash[:orbital_period]
  end

  def print_formatted
    puts "*" * 44
    puts "Planet name: #{@name}"
    puts "Mass: #{@mass} * 10^24 kg"
    puts "Diameter: #{@diameter} km"
    puts "Length of day: #{@length_of_day} hours"
    puts "Distance from sun: #{@distance_from_sun} * 10^6 km"
    puts "Mean temperature: #{@mean_temperature} ˚C"
    puts "Number of moons: #{@number_of_moons}"
    puts "Has a ring system: #{@ring_system}"
    puts "Its orbital period #{@orbital_period} days"
    puts "*" * 44
  end

  def calc_year(universe_start)
    t = Time.now
    years_around = t.year - universe_start
    # how many Earth days since the beginning of the universe
    #
    days_around = years_around * 365.2
    planet_age = days_around / @orbital_period
    puts "The age of the planet #{@name} is #{planet_age.round(3)} years."
  end
end
