# MY SOLUTION

# Virus Predictor

# I worked on this challenge [by myself, with: Mason ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#
#
# require_relative 'state_data'

class VirusPredictor

  #Initializing an instance of VirusPredictor with 3 arguments. Each argument becomes an instance variable
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Setting up (w/o specific output, other than variables passed) 2 methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  #Makes all methods below "private" only callable inside the class
  private

  #Determines predicted death based on the relationship between population density & population. Proportionate to size.
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

  #Based entirely on population density. Establishes speed based on how desne population densities are.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
     speed += 0.5
    elsif @population_density >= 150
      speed += 1
    if @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# result = VirusPredictor.new.each do {|state| return state.each do {|density, population|}
STATE_DATA.each { |state, value| VirusPredictor.new(state, value[:population_density], value[:population]).virus_effects }

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