# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
# A positive integer
# What is the output? (i.e. What should the code return?)
# Should be that same integer as a comma-separated integer as a STRING
# What are the steps needed to solve the problem?
#I think I need to basically manipulate the integer in a way where he outcome is changed permanently, so find a destructive method.  I need to change it in a way where commas are included where they make sense, maybe a type of sort? or a map with "," splitting...
#Commas come up for every 3 integers, so I have to tell ruby where to place things (determine number of commas, length of integer)
#
#If integer size is:
# 4-6 digits   = 1 comma
# 7-9 digits   = 2 commas
# 10-12 digits = 3 commas
# 
#Determine integer size, then place "," for ever 3 integers from the right.


# 1. Initial Solution

def separate_comma (integer)
	string = integer.to_s #this changes integer to string
	numbers = string.length #this tells me how many individual characters (numbers) there are in the string
	commas = (numbers-1) / 3

	for i in 1..commas
		string.insert((i*-4), ",")
	end
	return string
end






# 2. Refactored Solution




# 3. Reflection

What was your process for breaking the problem down? What different approaches did you consider?
It said we had to return a string, so .to_s came into play (since the input was an integer)
Also figured we needed to find the length of the string since we needed to insert a comma into the string
created appropriate variables, just kinda played with that

Was your pseudocode effective in helping you build a successful initial solution?
I'm still having trouble ranslating my pseudocode to actual code so like... yes, because it's a place to gather my thoughts but
then when it comes down to actual coding I still feel kinda lost

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
Didn't know how else to break the solution down. .to_s, .length and .insert.. Those made sense to me, it was more of an issue as to how to implement them in the code and have them work how I wanted them to.

How did you initially iterate through the data structure?
for i (range) loop

Do you feel your refactored solution is more readable than your initial solution? Why
They initial and refactored is the same






