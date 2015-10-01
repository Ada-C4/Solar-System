class Planet
	attr_accessor :name, :color, :diameter, :mass, :distance_from_sun, :number_of_moons, :rotation_speed

	def initialize(planets_hash)
		@name = planets_hash[:name]
		@color = planets_hash[:color]
		@diameter = planets_hash [:diameter]
		@number_of_moons = planets_hash[:number_of_moons]
		@rotation_speed = planets_hash[:rotation_speed]
		@distance_from_sun = planets_hash[:distance_from_sun]
	end

	#default variables!!!
	def my_fav_planet(planet_name, planet_distance=10000)
		puts "My favorite planet is #{planet_name}. It is #{planet_distance} away from the sun."
	end
	#create a method with a default value to an argument
end