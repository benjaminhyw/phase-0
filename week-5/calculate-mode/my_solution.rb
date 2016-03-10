# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? 
#An array of numbers or strings
# What is the output? (i.e. What should the code return?) 
#object with the highest frequency
# What are the steps needed to solve the problem?
#Declare variables and set them to empty arrays,
#MAP the array to retrieve the number of frequencies
#Choose maximum frquency and push it into variable
# iterate a second time and compare the frequencies to maximum frequencies
#push the maximum frequencies inside a final aray
# return the final array



# 1. Initial Solution
def mode(array)
final_array = []
max_count = []
array.map do |r| 
    max_count << array.count(r)
    end
    max_num = max_count.max
array.map do |m|
        if array.count(m) == max_num
       final_array << m
        end
    end
    final_array.uniq

end


# 3. Refactored Solution




# 4. Reflection

# Which data structure did you and your pair decide to implement and why?
# Arrays made the most sense because we didn't need any key values, simply the numbers and their frequency.
# Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# This one actually required more research.  I think I personally need a lot more studying to do, since my pair seemed to understand the concept better.  We both probably should brush up on methods a little
# What issues/successes did you run into when translating your pseudocode to code?
# Again same as the last, due to me not being sure of how to really further break this down, this is as far as I was able to comfortably get.  However, I will definitely make an attemot to come back to this.
# What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
# We chose to use .map and .max, as well as .uniq.  Did so to create new array, choose the element that came up the most, then delete duplicates.


