require "./planets"
require "./solar"

earth = {
		name: "Earth",
		color: "bluish green",
		diameter: 6_000_000,
		number_of_moons: 1,
		rotation_speed: 1,
		distance_from_sun: 40_000
	}
logan_planet = {
		name: "Logan's Planet",
		color: "a bright carmel",
		diameter: 4_000_000,
		number_of_moons: 24,
		rotation_speed: 0.5,
		distance_from_sun: 3_248_933
	}
best_planet ={
		name: "Best Planet",
		color: "bluish green",
		diameter: 455_000,
		number_of_moons: 0.55,
		rotation_speed: 4,
		distance_from_sun: 324_899
	}
trinity_planet = {
		name: "Trinity",
		color: "bluish green",
		diameter: 1_234_567,
		number_of_moons: 44,
		rotation_speed: 38.3,
		distance_from_sun: 1_200_003
}

solar_hash = {
	name: "Galactica",
	formation_date: 0, #in earth years
	current_date: 10_000 #in earth years
}

earth = Planet.new(earth)
logan_planet = Planet.new(logan_planet)
best_planet = Planet.new(best_planet)
trinity_planet = Planet.new(trinity_planet)

solar_system = SolarSystem.new(solar_hash)
solar_system.add_planet(earth)
solar_system.add_planet(logan_planet)
solar_system.add_planet(best_planet)
solar_system.add_planet(trinity_planet)

solar_system.print_out
puts
earth.my_fav_planet("Earth")
puts
solar_system.sun_distance_calc(earth, logan_planet)

solar_system.local_year(earth)
solar_system.local_year(logan_planet)
solar_system.local_year(trinity_planet)
solar_system.local_year(best_planet)
