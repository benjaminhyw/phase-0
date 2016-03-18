# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
#for GuessingGame#guess
# Input: integer called guess
# Output: symbol corresponding accuracy (:high, :correct, or :low)
# Steps:
#define initialize method
#define variables (answer = "", guess = gets.chomp)

#create if statement

#for GuessingGame#solved?
# Input:most recent guess
# Output: true or false
# Steps:

# Initial Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer.to_i
    @guess = nil
  end

  def guess(guess)
  	if guess > @answer
  		@guess = :high
  	elsif guess == @answer
  		@guess = :correct
  	else guess < @answer
  		@guess = :low
  	end
  end

  def solved?
  	if @guess == :correct
  		return true
  	else
  		return false
  	end
  end

  # Make sure you define the other required methods, too
end




# Refactored Solution






# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# Instance variables represent characteristics, so it holds information about the object.

# Instance methods represent behavior, so what the object does.

# When should you use instance variables? What do they do for you?
# You should use them whenever you plan on using the same information across several methods.  
# The information is stored in an instance variable, so that same information can be accessed multiple times.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Flow control is basically how you navigate through a method via if statements, for example.  In this case we needed to use flow control when we 
# compared guess to answer, as well as returning wether or not the guess being correct was true or false.
# It's basically the direction we tell the method to go in depending on the set of rules we set.
# I did not have issues with flow control in this challenge.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# Symbols are unique and immutable, meaning the information within that symbol is set.
# In this case, we probably needed use of symbols here because there were only three possible outcomes, all of wich were set.
# :high, :correct, or :low all of which are exactly that and nothing else.


