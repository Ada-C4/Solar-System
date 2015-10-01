class Solar_System
  attr_accessor :planets, :name

  def initialize(solar_hash)
    @name = solar_hash[:name]
    @planets = []
  end

  def add_many_planets(planet_array)
    planet_array.each do |plan|
      @planets.push(plan)
      puts plan.name
    end
  end

  def add_one_planet(planet_hash)
    @planets.push(planet_hash)
  end

  def print_planets
    @planets.length.times do |num|
      puts "#{num + 1}. #{@planets[num].name}"
    end
  end

  def distance_away(planet_a, planet_b)
    distance =(planet_a.distance_from_sun - planet_b.distance_from_sun).abs
    puts "The distance between #{planet_a.name} and #{planet_b.name} is #{distance} of some units I forget. Won't mean much anyway. On with your day."
  end

end
