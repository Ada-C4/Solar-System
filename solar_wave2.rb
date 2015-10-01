class SolarSystem
	attr_accessor :name, :formation_date, :current_date, :planets

	def initialize(solar_info)
		@name = solar_info[:name]
		@formation_date = solar_info[:formation_date]
		@current_date = solar_info[:current_date]
		@planets = []
	end

	def print_out
		puts "This is a solar system named #{@name}. It's formation date is in the year #{@formation_date}."
		puts "These are the planets in this system: "
		puts
		count = 0 
		@planets.each do |plan|
				puts "#{count + 1}. #{plan.name}." #the planet class has an instance variable called name and an associated accessor
				puts "#{plan.name} is #{plan.color}. It is #{plan.diameter} inches in diameter. It has #{plan.number_of_moons} moons. It rotates once for every #{plan.rotation_speed} earth years."
				puts
				count +=1
		end
	end

	def add_planet(planet)
		@planets.push(planet)
	end

	def sun_distance_calc(planet1, planet2)
		puts "A cool fact is that the distance between #{planet1.name} and #{planet2.name} is #{(planet1.distance_from_sun - planet2.distance_from_sun).abs} lightyears."
	end

	def local_year(planet_age)
		puts "#{planet_age.name} is #{(@current_date - @formation_date) * planet_age.rotation_speed} years old in local time based on it's rotation speed."
	end
end