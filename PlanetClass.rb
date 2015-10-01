class Planet

  attr_reader :name, :color, :size, :number_of_moons, :rotation, :distance_from_the_sun, :rain

  def initialize(planet_hash)
    @name = planet_hash[:name]
    @color = planet_hash[:color]
    @size = planet_hash[:size]
    @number_of_moons = rand(0..3)
    @rotation = @name.length/2
    @distance_from_the_sun = (@color.length) * (@number_of_moons + 1)
  end

  def air
      if rand(1..5) > 2
        @atmosphere = "a breathable"
      else
        @atmosphere = "a poisionous"
      end
  end

  def liquid
    if @atmosphere == "a breathable"
      if (@name.length > 6) && (@number_of_moons > 0)
        @water = "tidal"
      else
        @water = "fresh"
      end
    else
      if (@name.length > 6) && (@number_of_moons == 0)
        @water = "brackish"
      else
        @water = "no"
      end
    end
  end

  def populated
    @dry = rand(1..3) > 1
    if @water == "fresh" && @dry == true
      @populated = "mamals"
    elsif ((@water == "brackish") || (@water == "tidal")) && @dry != true
      @populated = "amphibians"
    else
      @populated = "no species"
    end
  end

  def weather(clouds = true)
    if (@atmosphere == "a breathable")
      if (clouds == true)
        @rain = "frequent and plentiful"
      else
        @rain = "comes rarely"
      end
    else
      if (clouds == true)
        @rain = "frequent and acidic"
      else
        @rain = "comes rarely and acidic"
      end
    end
  end

end
#
# brockt = Planet.new("Brockt", "yellow", "medium")
# camdoor = Planet.new("Camdoor", "red", "extra-large")
# drri = Planet.new("Drri", "purple", "extra-small")
# ethar = Planet.new("Ethar", "green", "large")
# furdip = Planet.new("Furdip", "light-brown", "medium")
# grondel = Planet.new("Grondel", "mauve", "large")
#
# planet_array = [atorp, brockt, camdoor, drri, ethar, furdip, grondel]

# puts "Let's learn about some planets!\nPick a planet that you want to learn about:"
# # sets up a loop to let the user pick again and again what planet they want to learn about until they indicate that they are done
# gooodbye_count = 0
#
# while gooodbye_count == 0 do
#   pt = 0
# # checks that imput is an int, asks for new imput until given a number
#   while pt < planet_array.length do
#       puts "#{pt + 1}. #{planet_array[pt].name}"
#       pt += 1
#   end
#     print ">> "
#     list_num = gets.chomp.to_i
#   while list_num == 0 do
#     puts "Give me the number assoicated with the planet.\nForexample,  if you want to learn about Camdoor, type \"3\"."
#     print ">> "
#     list_num = gets.chomp.to_i
#   end
# # prints the infomation about the selecte planet, then asks if they want more
#   pt_name = planet_array[list_num - 1]
#   #land_status = pt_name.land
#   puts "You picked \##{list_num}, #{pt_name.name}."
#   puts "#{pt_name.name} is a #{pt_name.size}, #{pt_name.color} planet  with #{pt_name.number_of_moons} moons. It has #{pt_name.air} atmosphere, and #{pt_name.liquid} liquid water. It is populated by #{pt_name.land.populated}."
#   puts "Facinating! Would you like to hear about another planet?"
#   print ">> "
#   another = gets.chomp.downcase
#
#   case another
#     when "no", "nope", "nah", "no thank you"
#       puts "Goodbye!"
#       gooodbye_count = 1
#     when "yes", "yup", "yeah!", "please"
#       puts "Awesome! Pick the next planet that you want to learn about:"
#     else
#       puts "hmmm.. I didn't quite catch that. Why don't you pick another planet:"
#   end
# end
