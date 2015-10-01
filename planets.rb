class Planet

  attr_accessor :name, :color, :species, :climate, :num_moons, :industry, :most_famous_inhabitant, :solar_rotation_rate, :distance_from_the_sun

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @color = planet_hash[:color]
    @species = planet_hash[:species]
    @climate = planet_hash[:climate]
    @num_moons = planet_hash[:num_moons]
    @industry = planet_hash[:industry]
    @most_famous_inhabitant = planet_hash[:most_famous_inhabitant]
    @solar_rotation_rate = planet_hash[:solar_rotation_rate]
    @distance_from_the_sun = planet_hash[:distance_from_the_sun]
  end

  def print_out
    puts "You have selected #{@name}."
    puts "#{@name} is a #{@color} planet, populated mainly by #{@species}. It has a #{@climate}-type climate and the primary industry is #{@industry}."
    puts "#{@name} has #{@num_moons} moons, a standard day of #{@solar_rotation_rate}, and #{@distance_from_the_sun}."
    puts "#{@name}'s most famous inhabitant is #{@most_famous_inhabitant}."
  end

  def print_past_tense
    puts "You have selected #{@name}."
    puts "#{@name} was a #{@color} planet, populated mainly by #{@species}. It had a #{@climate}-type climate and the primary industry was #{@industry}."
    puts "#{@name} had #{@num_moons} moon, a standard day of #{@solar_rotation_rate}, and #{@distance_from_the_sun}."
    puts "#{@name}'s most famous previous inhabitant is #{@most_famous_inhabitant}."
  end

  def is_in_one_piece(name, status = true)
    if status == true
      puts "#{@name} is currently in one piece."
    elsif status == false
      puts "#{@name} was destroyed by the Death Star."
    end
  end

end
