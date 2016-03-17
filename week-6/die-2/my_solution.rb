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

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# This one works with strings, so it was kind of just a matter of making sure this code works with string rather than integers

# What does this exercise teach you about making code that is easily changeable or modifiable? 
# If you have clean code, you can easily mod it up.  Quick little fixes here and there to avoid starting from scratch or going about it all crazy

# What new methods did you learn when working on this challenge, if any?
# Didn't learn any new methods while working on this challenge

# What concepts about classes were you able to solidify in this challenge?
# Instance variables.. still fuzzy but, classes have them

