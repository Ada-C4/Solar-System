class SolarSystem
  attr_reader :name, :planets, :sun_and_planets

  def initialize(name, creation_date = 0, current_date = 2517)
    @name = name
    @sun_and_planets = []
    @planets = []
    @creation_date = creation_date
    @current_date = current_date
  end

  def add_planet(planet)
    @planets.push(planet)
  end

  def add_sun(sun) # action
      @sun_and_planets.push(sun)
  end

  def add_planets
    @sun_and_planets += @planets
  end

  def local_year(planet)
    years_exist = @current_date - @creation_date
    return years_exist / planet.orbital_periods.to_f
  end

  def distance_calc(planet_a, planet_b)
    distance = planet_a.orbital_distance.to_i - planet_b.orbital_distance.to_i
    distance.abs
  end

end
