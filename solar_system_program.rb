require "./planet_class_file.rb"
require "./solar_system_class.rb"

#start with just one planet
pluto =
      {name: "Pluto",
      year_length: 5,
      numbers_of_moons: 3,
      diameter: 23,
      distance_from_star: 6422,
      moon_names:[],
      state_of_matter: "furry",
      fun_facts: "For some reason this planet can't talk, but planet Goofy can."
       }

#then move on to an array of planet info
#question- is there an easy way to keep all this info in a different file?
#I don't like it to be here.

more_planets = [
        {name: "Oobleck",
        year_length: 2,
        numbers_of_moons: 2,
        diameter: 3.34,
        distance_from_star: 105,
        moon_names:[],
        state_of_matter: "sometimes solid, sometimes liquid",
        fun_facts: "You can run across the surface, but if you walk you'll sink."
         },

        {name: "Pizza",
        year_length: 3,
        numbers_of_moons: 1,
        diameter: 465,
        distance_from_star: 231,
        moon_names:[],
        state_of_matter: "gaseous",
        fun_facts: "There are little green aliens inside a crane game on Pizza Planet."
        },

        {name: "Captain",
        year_length: 34,
        numbers_of_moons: 0,
        diameter: 65.5,
        distance_from_star: 24,
        moon_names:[],
        state_of_matter: "plasma",
        fun_facts: "Captain Planet is gonna take pollution down to zero."
      },

        {name: "Xerox",
        year_length: 2,
        numbers_of_moons: 2,
        diameter: 34.3,
        distance_from_star: 16,
        moon_names:["Copy 1", "Copy 2"],
        state_of_matter: "black ink",
        fun_facts: "You can make copies on planet Xerox."
        },

        {name: "Janet",
        year_length: 33,
        numbers_of_moons: 3,
        diameter: 105,
        distance_from_star: 1020,
        moon_names:["Riff Raff", "Frank N. Furter", "Brad"],
        state_of_matter: "hot mess",
        fun_facts: "Dammit, Janet. I love you."
        }
      ]

#first make planets from the info we have
#start with just one
pluto_p = Planet.new(pluto)

# then make a whole array of planets
starter_planets_array = []

more_planets.each do |planet|
  starter_planets_array.push(Planet.new(planet))
end

#test
# starter_planets_array.each do |planet|
#   puts planet.name
# end

#ok, now make a solar system.
bowler_system = SolarSystem.new("Bowler system", "Bowling ball")
puts "We have created the #{bowler_system.system_name}."
puts

bowler_system.add_one_planet(pluto_p)

#Great. Now, from the array of planets we made, add those planets to the bowler system as well.
bowler_system.add_array_of_planets(starter_planets_array)

#now play around with the solar system a little
bowler_system.planets_array.each do |planetn|
  puts planetn.name
end
puts

bowler_system.planets_array.each do |planetp|
  puts planetp.dig_hole_through_planet
end

bowler_system.planets_array.each do |planetz|
  puts planetz.print_planet_info
end
