# The Verse from the Firefly Universe. Here are the 'central planets' orbiting the White Sun, "White Sun System," and home of the Alliance

class Planet

  attr_reader :name, :sun_orbited, :moons, :date_terraformed, :diameter, :mass, :gravity, :orbital_position, :orbital_distance, :orbital_periods, :region, :cities_towns, :population, :affiliation, :print_stuff

    def initialize(planet_hash, affiliation = "Union of Allied Planets")
      @name = planet_hash[:name]
      @sun_orbited = planet_hash[:sun_orbited]
      @moons = []
      @date_terraformed = planet_hash[:date_terraformed]
      @diameter = planet_hash[:diameter]
      @mass = planet_hash[:mass]
      @gravity = planet_hash[:gravity]
      @orbital_position = planet_hash[:orbital_position]
      @orbital_distance = planet_hash[:orbital_distance]
      @orbital_periods = planet_hash[:orbital_periods]
      @region = planet_hash[:region]
      @cities_towns = []
      @population = planet_hash[:population]
      @affiliation = affiliation
    end

    def add_moons(*moon)
      @moons += (moon)
    end

    def add_cities_towns(*city_town)
      @cities_towns += (city_town)
    end

    def print_stuff
      puts "- #{@name} orbits #{@sun_orbited} once every #{@orbital_periods}."
      puts "- Its orbital position is #{@orbital_position}, and its orbital distance is #{@orbital_distance}."
      puts "- #{@name}'s moons are: #{@moons.join(", ")}. It was terraformed in the year #{@date_terraformed}."
      puts "- It has a diameter of #{@diameter}, its mass is #{@mass}, and its gravity is #{@gravity}."
      puts "- It's located in the #{@region} region with a population of #{@population}. Popular cities are: #{@cities_towns.join(", ")}."
      puts "- It is affiliated with the #{@affiliation}."
      puts
    end
end
