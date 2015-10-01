class SolarSystem
  attr_accessor :name, :galaxy, :star
  def initialize(info_hash)
  @name = info_hash[:name]
  @galaxy = info_hash[:galaxy]
  @star = info_hash[:star]
  end

def print_out
  puts "This is planet #{@name}, in the galaxy #{@galaxy}, in the star #{@star}, with the planets #{@planets}"
end
end

starfox_hash = {
  name: "starfox",
  galaxy: "Loop",
  star: "Scorpio"
}

starbear_hash = {
  name: "starbear",
  galaxy: "Black Hole",
  star: "Pisces"
}

starcat_hash = {
  name: "starcat"
  galaxy: "Worm",
  star: "Aquarius"
}

s = SolarSystem.new(starfox)
puts s
