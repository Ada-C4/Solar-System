class Solar
  attr_reader :name, :plan
  def initialize(solar_hash)
    @name = solar_hash[:name]
    @plan = solar_hash[:plan]

  end

  def add_plan(planet)
    @plan.push(planet)
  end

  def print_out
    @plan.each do |sphere|
      puts sphere.name
    end
  end

end
