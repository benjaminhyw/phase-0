# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# require_relative 'state_data'
# #require_relative takes information from a different file by loading that info, whereas require you use when you need to make use of rubys built in libraries

# class VirusPredictor
# #taking three arguments as the input and then assigning them to instance variables
#   def initialize(state_of_origin, population_density, population)
#     @state = state_of_origin
#     @population = population
#     @population_density = population_density
#   end


#   #  def initialize(state)
#   #   @state = state
#   #   @population = STATE_DATA[state][:population]
#   #   @population_density = STATE_DATA[state][:population_density]
#   # end
# # this method incapsulates both of the following two methods
#   def virus_effects
#     predicted_deaths(@population_density, @population, @state)
#     speed_of_spread(@population_density, @state)

    
#     # predicted_deaths 
#     # speed_of_spread
#     #They've been initialized so we dont need the same paremeters anywhere else, we already have them
#   end

#   private
# # using instance variables from initialize inputs and then iterating using conditional statements to get the number of deaths
#   def predicted_deaths(population_density, population, state)
#     # predicted deaths is solely based on population density
#     if @population_density >= 200
#       number_of_deaths = (@population * 0.4).floor
#     elsif @population_density >= 150
#       number_of_deaths = (@population * 0.3).floor
#     elsif @population_density >= 100
#       number_of_deaths = (@population * 0.2).floor
#     elsif @population_density >= 50
#       number_of_deaths = (@population * 0.1).floor
#     else
#       number_of_deaths = (@population * 0.05).floor
#     end

#     print "#{@state} will lose #{number_of_deaths} people in this outbreak"

#   end
# #using instance variables from input and then iterating to determine the speed at which it spreads at 
#   def speed_of_spread(population_density, state) #in months
#     # We are still perfecting our formula here. The speed is also affected
#     # by additional factors we haven't added into this functionality.
#     speed = 0.0

#     if @population_density >= 200
#       speed += 0.5
#     elsif @population_density >= 150
#       speed += 1
#     elsif @population_density >= 100
#       speed += 1.5
#     elsif @population_density >= 50
#       speed += 2
#     else
#       speed += 2.5
#     end

#     puts " and will spread across the state in #{speed} months.\n\n"

#   end

# end

#REFACTORED CODE***************************

require_relative 'state_data'

class VirusPredictor
#taking three arguments as the input and then assigning them to instance variables
  def initialize(state)
    @state = state
    @population = STATE_DATA[state][:population]
    @population_density = STATE_DATA[state][:population_density]
  end
# this method incapsulates both of the following two methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
# using instance variables from initialize inputs and then iterating using conditional statements to get the number of deaths
  def predicted_deaths
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
#using instance variables from input and then iterating to determine the speed at which it spreads at 
  def speed_of_spread #in months
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

# #=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# This was the initial driver code we had
# STATE_DATA.each do |state, hash|
# report = VirusPredictor.new(state, STATE_DATA[state][:population_density], STATE_DATA[state][:population])
# report.virus_effects
# end
# Final refactored driver code

STATE_DATA.each do |state, value|
report = VirusPredictor.new(state)
report.virus_effects
end

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects


#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# There's a has within a hash.  The first hash as a key, and their value is another hash.
# We see different syntax because of it.  In the second has, we have keys and their vaules respectively.


# What does require_relative do? How is it different from require?
# require_relative basically loads up information from a different file, whereas
# require uses built in ruby methods for information.

# What are some ways to iterate through a hash?
# Using multiple brackets to access the value you're trying to reach. 
# This is something my pair and I actually forgot about when trying to come up with a code.
# Example=> STATE_DATA[state][:population_density]

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# It took us a loooong time to realize (brains were fried) but, they were already defined as
# instance variables in the intiialize method, so we didn't need to repeat ourselves in 
# any of the following methods.

# What concept did you most solidify in this challenge?
# We actually had to come back and look at this again the next day, so we had trouble maintaining
# the information we had learned while learning JavaScript.. which is an indicator we need more practice
# with Ruby to maintain that knowledge.
# But I guess, instance variables were solidified because once we refactored it was a huge "OHHHHHH" from both of us lol




