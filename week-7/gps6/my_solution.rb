# Virus Predictor

# I worked on this challenge Armani.
# We spent 1 hours on this challenge.

# EXPLANATION OF require_relative
#
#
require_relative 'state_data'

class VirusPredictor
  # Initializing three arguements and making instance variables of each
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calling methods predicted deaths and speed of spread calling instance variable but seems redunant
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  
  # takes three arguements and calculating number of deaths depending on population density and then printing statement of number of deaths
  def predicted_deaths
   # predicted deaths is solely based on population density
#     if @population_density >= 200
#       @number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       @number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       @number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       @number_of_deaths = (@population * 0.1).floor
#     else
#      @number_of_deaths = (@population * 0.05).floor
#     end
    case @population_density
    when 0...49 then @number_of_death = (@population * 0.05).floor
      when 50...99 then @number_of_death=(@population * 0.1).floor
      when 100...149 then @number_of_death=(@population * 0.2).floor
      when 150...200 then @number_of_death=(@population * 0.3).floor
      else @number_of_death=(@population * 0.4).floor
    end    
   print "#{@state} will lose #{@number_of_death} people in this outbreak"

  end
  # taking in two arguements and calculating the rate of spread depending on population density and then printing 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    @speed = 0.0

#     if @population_density >= 200
#       @speed += 0.5
#     elsif @population_density >= 150
#       @speed += 1
#     elsif @population_density >= 100
#       @speed += 1.5
#     elsif @population_density >= 50
#       @speed += 2
#     else
#       @speed += 2.5
#     end
    
    case @population_density
      when 0...49 then @speed += 2.5
      when 50...99 then @speed += 2
      when 100...149 then @speed += 1.5
      when 150...200 then @speed += 1
      else @speed += 0.5
    end
    puts " and will spread across the state in #{@speed} months.\n\n"
  end
end

#=======================================================================

# DRIVER CODE

STATE_DATA.each{|state, population|
  report = VirusPredictor.new(state, population[:population_density],
    population[:population_density])
report.virus_effects
  }
  
  

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects
#=======================================================================
#  Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# One is the rocket style using the => and the other is . notation. The dot notation runners quicker for larger files.
# What does require_relative do? How is it different from require?
# require_relative looks in the current directory and requires the file you are referencing. Require needs a direct pathing to find the file. it doesnt automatically look in the current directory
# What are some ways to iterate through a hash?
# We used .each, you can use .map, .each_key, .each_value.
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# We tried to make a print method but quickly realize you can access instance variables from a private section. We could have removed private and it would have worked.
# What concept did you most solidify in this challenge?
# It was rough after a week of JS. It took a little bit to get back into the grove. 