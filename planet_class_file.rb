class Planet
#year length is given in units of earth years
#diameter is given in units of earth diameters
#distance_from_star is given in millions of miles

  attr_reader :name, :year_length, :number_of_moons, :diameter, :distance_from_star , :moon_names, :state_of_matter, :fun_facts

  def initialize(single_planet_hash)
    @name = single_planet_hash[:name]
    @year_length = single_planet_hash[:year_length]
    @number_of_moons = single_planet_hash[:number_of_moons]
    @diameter = single_planet_hash[:diameter]
    @distance_from_star = single_planet_hash[:distance_from_star]
    @moon_names = single_planet_hash[:moon_names] #moon names is an array
    @state_of_matter = single_planet_hash[:state_of_matter]
    @fun_facts = single_planet_hash[:fun_facts]
  end

  def dig_hole_through_planet (shovelfulls = 100)
    progress = (diameter*100)/shovelfulls
    if progress < 100
      puts "You ran out of air before digging all the way through. :("
    else
      puts "SUCCESS! You dug a hole through the planet!"
    end
  end

   def add_moon(moon)
     @moon_names.push(moon)
   end


   def print_planet_info
    puts "\n#{@name} is a planet that is #{@distance_from_star} million miles from its star."
    puts "Its diameter is #{@diameter} times that of Earth's."
    puts "One #{@name} year is equal to #{@year_length} Earth years."
    puts "The surface is #{@state_of_matter}."
    puts "#{@fun_facts} How about that?"
    puts
    end
end
