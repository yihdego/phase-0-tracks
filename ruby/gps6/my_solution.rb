# Virus Predictor

# EXPLANATION OF require_relative
# Without require_relative we wouldn't be able to reference state data.
# Regular require would be more powerful as we could visit other directories but they are more complicated to type.
require_relative 'state_data'

class VirusPredictor
# The initialize sets our global variables
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
# A method to run the other methods predicted deaths and speed of spread
  def virus_effects
    predicted_deaths(@population_density, @population, @state)
    speed_of_spread(@population_density, @state)
  end

  private
# A method that takes 3 variables form state data's hash and runs an if/elsif/else statment to find out at the rounded up whole interger how many people will die of a disease
# It will also print the data in a legible format
  def predicted_deaths(population_density, population, state)
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
# Another method but only takes 2 variables and does an if/elsif on how fast the disease spreads add mph to base 0mph
  def speed_of_spread(population_density, state) #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end

# The method needs to be outside of the class so that you can call a method for all the data, because an instance is for a single state.
def state_report
  STATE_DATA.each do |states, population_density, population|
  states = VirusPredictor.new(states, STATE_DATA[states][:population_density], STATE_DATA[states][:population])
  states.virus_effects
  end
end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects

state_report

#=======================================================================
# Reflection Section

# What are the differences between the two different hash syntaxes shown in the state_data file?
# You can use a hash rocket to set key, value pair or the colon and thats helpful when your data key is labeled the same.
# What does require_relative do? How is it different from require?
# Require by itself is a stronger scope where require relative will grab your file form the same directory
# What are some ways to iterate through a hash?
# Instead of [array].each you can use {hash}.each_pair or {hash}.each_key
# When refactoring virus_effects, what stood out to you about the variables, if anything?
# Unable to do this by myself, seperated with my pair to complete module cause of time constraints
# What concept did you most solidify in this challenge?
# Working with nested data structures was something I was confused with and this challenge helped me understand how to access the data I needed