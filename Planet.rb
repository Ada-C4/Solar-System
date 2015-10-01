class Planet
  attr_reader :name, :diameter, :weight_multiplier, :num_moons, :rate_solar_rotation, :distance_from_sun

  def initialize(info_hash)
    @name = info_hash[:name]
    @diameter = info_hash[:diameter]
    @weight_multiplier = info_hash[:weight_multiplier]
    @num_moons = info_hash[:num_moons]
    @rate_solar_rotation = info_hash[:rate_solar_rotation]
    @distance_from_sun = info_hash[:distance_from_sun]
  end

#using a default value attribute
  def weight_on_planet(my_weight = 100)
    if my_weight != 100
      puts "Your weight on #{@name} is #{@weight_multiplier * my_weight}lbs."
    else
      puts "If your weight was 100lbs on Earth, your weight on #{@name} would be #{@weight_multiplier * my_weight}lbs."
    end
  end
end
