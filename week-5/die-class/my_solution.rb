# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input: number of sides 1-6
# Output:random number between 1 and 6
# Steps:
# define Die class
# assign sides
# include ArgumentError if number is less than 1
# define sides to return number of sides
# define roll to return random number between 1-6


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
    	raise ArgumentError.new("There should be more than one side!!")
    else
    	@sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
    return (1 + rand(sides))
  end
end



# 3. Refactored Solution







# 4. Reflection

# What is an ArgumentError and why would you use one?
# It's basically an error message we can generate for a class if we feel like the user  isn't doing something correctly.
# We can use one whenever they don't follow specific rules we have set

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# .new, didn't really have any issues using it

# What is a Ruby class?
# It's like the blueprint for everything within it.

# Why would you use a Ruby class?
# To simplify methods, as they bsically apply their rules to everythign defined within them.  They keep info organized and control what methods do what.

# What is the difference between a local variable and an instance variable?
# A local variable only exists within the method, while an instance variable exists throughout the class (aka can be used for several methods)
# Also, instance varables have an @ sign in front of them.

# Where can an instance variable be used?
# In any method within the class
