# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input:Array of strings
# Output:Random selection out of the array (in this case, one of the possible outcomes out of the 6)
# Steps:
#When we call roll, we should get a random string back.
#We get an ARGUMENTERROR if it tries to roll out of an empty ARRAY
#We need to define what the possible outcomes could be.

#Tell the method how to take elements.
#Tell method how to return elements.


# Initial Solution

class Die
  def initialize(labels)
  	if labels.empty?
  		raise ArgumentError.new("You need at least one outcome!")
  	else
  		@sides = labels
  	end
  end

  def sides
  	@sides.size
  end

  def roll
  	@sides[rand(0...@sides.size)]
  end
end



# Refactored Solution








# Reflection