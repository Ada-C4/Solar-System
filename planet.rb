class Planet
  attr_accessor :name, :diameter, :mass, :number_of_moons
  def initialize(name, diameter, mass, number_of_moons)
    @name = name
    @diameter = diameter
    @mass = mass
    @number_of_moons = number_of_moons
  end

  def print_out
    puts "The planet #{@name} has a diameter of #{@diameter}, a mass of #{@mass}, and #{@number_of_moons} moons."
  end
end
