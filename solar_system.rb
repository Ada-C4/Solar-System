class SolarSystem

attr_accessor :name, :planets

  def initialize (planet_hash)
    @name = planet_hash[:name]
    @planets = []
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def add_multiple_planets(planet_array)
    planet_array.each do |plan|
      @planets.push(plan)
    end
  end

  def about
  puts "Here are the planets in the #{@name} solar system:"
  count = 1

    @planets.each do |planet|
     puts "#{count}. #{planet.name}"
     count += 1
    end
    puts "#{count}. Exit"
    puts "Which planet do you want to learn about?"
    learn = gets.chomp.to_i
    continue = true

    while continue == true
       if learn < count
         planets[learn-1].about
         puts "What planet do you want to learn about next?"
         learn = gets.chomp.to_i
       elsif learn == count
         puts "Goodbye!"
         continue = false
       else
         puts "I am sorry. I don't know what you mean. Please enter in a number from 1 to #{count-1} to learn about a planet, or #{count} to exit"
         learn = gets.chomp.to_i
       end
    end
  end

end
