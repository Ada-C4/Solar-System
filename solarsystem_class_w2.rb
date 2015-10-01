require "./planets_class_w2"

class SolarSystem

	attr_accessor :planets

	def initialize(planets)
		@planets = []
	end	

	def add_planet(planet)
		@planets.push(planet)
	end

	def add_planet_array(planet_array)
		planet_array.each do |planet|
		@planets.push(planet)
		end
	end

# optional 1
#	def distance_btw_planets(fiona, finnigan)
#		puts "The distance between planets #{fiona.name} and #{finnigan.name} is #{fiona.leash_length - finnigan.leash_length}.abs feet"
#	end

end

# puts planets.distance_btw_planets
