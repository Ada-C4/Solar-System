class Planet

  attr_accessor :name, :pillage, :sea_biscuits, :dubloons, :rum, :parrots, :pirates, :solar_rotation, :distance_from_the_sun

  def initialize (pirate_hash)
    @name = pirate_hash[:name] # planet-ship name
    @pillage = pirate_hash[:pillage] # number of other planets pirate ship pillages per year
    @sea_biscuits = pirate_hash[:sea_biscuits] # of sea biscuits eaten per pirate per year
    @dubloons = pirate_hash[:dubloons] # number of dubloons in the planet's treasure chests
    @rum = pirate_hash[:rum] # bottles of rum per pirate per year
    @parrots = pirate_hash[:parrots] # parrots on the planet
    @pirates = pirate_hash[:pirates] # population
    @solar_rotation = pirate_hash[:solar_rotation] # rate of solar rotation in degrees per day
    @distance_from_the_sun = pirate_hash[:distance_from_the_sun] # in thousands of  kilometers
  end

  def info
    puts "Aargh!! Ay Matey! So you want to know about the planet #{@name}?? 'Tis' #{@distance_from_the_sun} thousand kilometers from the sun, and it rotates #{@solar_rotation} degrees per day. On #{@name} the pirates be pillagin' #{@pillage} other planets each year to collect their national treasure, which is #{@dubloons} Gold Dubloons. Each pirate eats about #{@sea_biscuits} each year and washes 'em down with #{@rum} bottles o' rum. Hey Ho! There are #{@parrots} parrots askin' for crackers and #{@pirates} fightin' pirates!"
  end

  def drunkards (yes = true)
    if true
      puts "Ay, it's hard to believe #{@pirates} drink #{@rum} bottles of rum, but ye know we work harrrrd!"
    else
      puts "'Tis a sad pirate planet that can only drink #{@rum} bottles of rum."
    end
  end

end
