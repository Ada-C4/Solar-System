class Planet
	attr_accessor :name, :color, :diameter, :mass, :has_squirels, :distance_from_the_sun, :number_of_moons, :cool_facts

	def initialize(name, color, diameter, mass, has_squirels, distance_from_the_sun, number_of_moons)
		@name = name
		@color = color
		@diameter = diameter
		@mass = mass
		@has_squirels = has_squirels
		@distance_from_the_sun = distance_from_the_sun
		@number_of_moons = number_of_moons 
		@cool_facts = []
	end

	def print_out_details
		line_width = 40
		line_break = "* ~ ".center(line_width / 4)
		puts line_break * 4
		puts "PLANET FACTS: ".center(line_width)
		puts "Welcome to #{@name}\n".center(line_width)
		
		puts "Here are some great things about #{@name}:"
		puts "#{@name} has a beautiful #{@color} color."
		puts "It is #{@diameter} inches in diameter."
		puts "#{@name} has a mass of #{@mass} metric tons. "
		puts "Unfortunately it #{@has_squirels} have squirells."
		puts "It is #{@distance_from_the_sun} miles from our humble sun."
		puts "It has many moons. #{@number_of_moons} to be exact.\n\n"
		puts line_break * 4
	end

	def print_out_facts
		puts "\nHere are some cool facts about #{@name}: "
		puts @cool_facts
	end

	def add_cool_facts(cool_fact)
		@cool_facts.push(cool_fact)
	end
end

introduction = <<YES
Welcome to the known Solar System. 
Now, do you want to read about some 
interesting planets?

Or, if you're a brave astronaut, 
make your own! Select a letter.
Type "DONE" whenever you are done.

	A. Read
	B. Create

Your choice: 
YES

read = <<YES
\nOk! We have lots of amazing planets here. 
Tell me, which would you like to explore? 
Select a leter.

Type "DONE" whenever you are done.

	A. Earth
	B. Ploraphalore
	C. Balloonarockintimes
	D. Ticklewicklefickle

Your choice: 
YES

create = <<YES
\nAlright! You ARE brave. We have to collect a lot of information about 
your new planet before it can be created. I am going to ask you a 
series of questions. Type "DONE" whenever you are done.

Your choice: 
YES

puts introduction
response = gets.chomp.upcase

while response != "DONE"
	case response 
	when "A"
		puts read
		a_response = gets.chomp.upcase
		if a_response == "A" 
			earth = Planet.new("Earth", "blue and green", 23210, 2918239108, "does", 213928190, 1)
			puts earth.print_out_details
		end
		if a_response == "B"
			plorphalore = Planet.new("Plorphalore", "Rainbow", 34930, 342899, "does not", 49382940, 34)
			puts plorphalore.print_out_details
		end
		if a_response == "C"
			balloonarockintimes = Planet.new("Balloonarockintimes", "wonderful mix of rose and carmel", 23198, 42194291, "does", 13918, 10)
			puts balloonarockintimes.print_out_details
		end
		if a_response == "D"
			ticklewicklefickle = Planet.new("Ticklewicklefickle", "bright black", 29120, 21903902, "does", 2391, 10000)
			puts ticklewicklefickle.print_out_details
		end

	when "B"
		puts create
		puts "What is the name of your planet? "
		user_planet_name = gets.chomp
		puts "What is the color of your planet? "
		user_planet_color = gets.chomp
		puts "What is the diameter of your planet? (inches)"
		user_planet_diameter = gets.chomp
		puts "What is the mass of your planet? (metric tons)"
		user_planet_mass = gets.chomp
		puts "Does your planet have squirells? (does/does not)"
		user_planet_squirells = gets.chomp
		puts "How far is your planet from the sun? (miles)"
		user_distance = gets.chomp
		puts "How many moons does the planet have? (number)"
		user_moons = gets.chomp
		puts "Would you like to add some awesome facts about your planet? (Y/N)"
		user_facts_response = gets.chomp.upcase
			if user_facts_response == "Y"
				puts "Ok! Start adding facts here and press return when you're done: "
				facts = []
				user_cool_facts = gets.chomp
					while user_cool_facts != ""
						facts << user_cool_facts
						user_cool_facts = gets.chomp
					end
			elsif user_facts_response == "N"
				user_cool_facts = "You didn't want to list any."					
			end

		puts "\nOk, creating your planet...\n\n"
		
		user_planet = Planet.new(user_planet_name, user_planet_color, user_planet_diameter, user_planet_mass, user_planet_squirells, user_distance, user_moons)
		user_planet.add_cool_facts(facts)

		puts user_planet.print_out_details
		puts user_planet.print_out_facts

	end

	puts "\nDo you want to read or create another planet?\nIf not, type 'DONE.'\n\n"
	puts introduction
	response = gets.chomp.upcase
end